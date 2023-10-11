import tensorflow as tf


class MLP(tf.keras.layers.Layer):
    def __init__(self, num_layers, hidden_dim, output_dim):
        '''
            num_layers: number of layers in the neural networks (EXCLUDING the input layer). If num_layers=1, this reduces to linear model.
            hidden_dim: dimensionality of hidden units at ALL layers
            output_dim: number of classes for prediction
        '''
        super(MLP, self).__init__()

        self.linear_or_not = True  # default is linear model
        self.num_layers = num_layers

        if num_layers < 1:
            raise ValueError("number of layers should be positive!")
        elif num_layers == 1:
            # Linear model
            self.linear = Linear_model(output_dim=output_dim)
        else:
            # Multi-layer model
            self.linear_or_not = False
            self.multi = Multi_model(
                layers=num_layers, hidden_dim=hidden_dim, output_dim=output_dim)

    def call(self, input_features):
        if self.linear_or_not:
            # If linear model
            return self.linear(input_features)
        else:
            # If MLP
            return self.multi(input_features)


class Linear_model(tf.keras.layers.Layer):
    def __init__(self, output_dim):
        super(Linear_model, self).__init__()
        self.output_layer = tf.keras.layers.Dense(units=output_dim)

    def call(self, input_features):
        return self.output_layer(input_features)


class Multi_model(tf.keras.layers.Layer):
    def __init__(self, layers, hidden_dim, output_dim):
        super(Multi_model, self).__init__()
        self.layers = layers
        self.dense_list = []
        self.batch_list = []

        for i in range(layers-1):
            self.dense_list.append(tf.keras.layers.Dense(units=hidden_dim))
            self.batch_list.append(tf.keras.layers.BatchNormalization())
        self.dense_list.append(tf.keras.layers.Dense(units=output_dim))

    def call(self, input_features):
        for i in range(self.layers-1):
            densed = self.dense_list[i](input_features)
            batched = self.batch_list[i](densed)
            input_features = tf.nn.relu(batched)
        multi_result = self.dense_list[-1](input_features)

        return multi_result


class GraphCNN(tf.keras.Model):
    def __init__(self, num_layers, num_mlp_layers, hidden_dim, output_dim, final_dropout, learn_eps, graph_pooling_type, neighbor_pooling_type):
        '''
            num_layers: number of layers in the neural networks (INCLUDING the input layer)
            num_mlp_layers: number of layers in mlps (EXCLUDING the input layer)
            hidden_dim: dimensionality of hidden units at ALL layers
            output_dim: number of classes for prediction
            final_dropout: dropout ratio on the final linear layer
            learn_eps: If True, learn epsilon to distinguish center nodes from neighboring nodes. If False, aggregate neighbors and center nodes altogether. 
            neighbor_pooling_type: how to aggregate neighbors (mean, average, or max)
            graph_pooling_type: how to aggregate entire nodes in a graph (mean, average)
        '''

        super(GraphCNN, self).__init__()

        self.final_dropout = final_dropout
        self.num_layers = num_layers
        self.graph_pooling_type = graph_pooling_type
        self.neighbor_pooling_type = neighbor_pooling_type
        self.learn_eps = learn_eps
        self.eps = tf.Variable(tf.zeros(self.num_layers-1))

        # List of MLPs
        # List of batchnorms applied to the output of MLP (input of the final prediction linear layer)
        self.mlps = []
        self.batches = []
        self.linears = []
        self.drops = []

        for layer in range(self.num_layers-1):
            self.mlps.append(MLP(num_mlp_layers, hidden_dim, hidden_dim))
            self.batches.append(tf.keras.layers.BatchNormalization())
            self.linears.append(tf.keras.layers.Dense(output_dim))
            self.drops.append(tf.keras.layers.Dropout(final_dropout))

        self.linears.append(tf.keras.layers.Dense(output_dim))
        self.drops.append(tf.keras.layers.Dropout(final_dropout))

    def __preprocess_neighbors_sumavepool(self, batch_graph):
        # create block diagonal sparse matrix
        edge_mat_list = []
        edge_mat_w_list = []
        start_idx = [0]
        for i, graph in enumerate(batch_graph):
            start_idx.append(start_idx[i] + len(graph.g))
            edge_mat_list.append(graph.edge_mat[0:2] + start_idx[i])
            edge_mat_w_list.append(graph.edge_mat[2])
            # # WE DON'T transform the original directe graph into  bi-directed one.
            # edge_mat_list.append(np.fliplr(graph.edge_mat[0:2]) + start_idx[i])
            # edge_mat_w_list.append(graph.edge_mat[2])

        Adj_block_idx = tf.concat(edge_mat_list, 1)
        # tf.ones(Adj_block_idx.shape[1])
        Adj_block_elem = tf.concat(edge_mat_w_list, 0)
        Adj_block_elem = tf.cast(Adj_block_elem, tf.float32)

        # Add self-loops in the adjacency matrix if learn_eps is False, i.e., aggregate center nodes and neighbor nodes altogether.
        if not self.learn_eps:
            # This is the number of nodes in the entire graph
            num_node = start_idx[-1]
            self_loop_edge = tf.constant([range(num_node), range(num_node)])
            elem = tf.ones(num_node)
            # Adding connections from self-connections to the list of other connections specified
            Adj_block_idx = tf.concat([Adj_block_idx, self_loop_edge], 1)
            # Total number of connections + number of nodes
            Adj_block_elem = tf.concat([Adj_block_elem, elem], 0)

        Adj_block_idx = tf.cast(tf.transpose(Adj_block_idx), tf.int64)
        Adj_block = tf.SparseTensor(indices=Adj_block_idx, values=Adj_block_elem, dense_shape=[
                                    start_idx[-1], start_idx[-1]])
        return Adj_block

    def __preprocess_graphpool(self, batch_graph):
        # create sum or average pooling sparse matrix over entire nodes in each graph (num graphs x num nodes)
        start_idx = [0]

        # compute the padded neighbor list
        for i, graph in enumerate(batch_graph):
            start_idx.append(start_idx[i] + len(graph.g))

        idx = []
        elem = []
        curCheckNodeOrderId = 0
        overallNodeOffset = 0
        for i, graph in enumerate(batch_graph):

            tmpElemCnt = 0
            for nodeId in graph.g.nodes():
                if (graph.g.nodes()[nodeId]['nodeLabel'] >= 0):
                    # idx will be [[0,0],[0,1]...[0,218<end of the 1st graph>],[1,219<end of the first graph + 1>]...]
                    idx.append([curCheckNodeOrderId, overallNodeOffset])
                    curCheckNodeOrderId += 1
                    tmpElemCnt += 1
                overallNodeOffset += 1

            elem.extend([1]*tmpElemCnt)

        elem = tf.constant(elem)
        graph_pool = tf.SparseTensor(indices=idx, values=elem, dense_shape=[
                                     curCheckNodeOrderId, overallNodeOffset])
        # graph_pool is a diagonal matrix of ones, where the ones are rows corresponding to the length of each graph.
        graph_pool = tf.cast(graph_pool, tf.float32)
        return graph_pool

    def next_layer_eps(self, h, layer, Adj_block=None):
        # pooling neighboring nodes and center nodes separately by epsilon reweighting.

        # If sum or average pooling
        h2 = tf.cast(h, tf.float32)
        pooled = tf.sparse.sparse_dense_matmul(Adj_block, h2)

        if self.neighbor_pooling_type == "average":  # The default is sum
            # If average pooling
            degree = tf.sparse.sparse_dense_matmul(
                Adj_block, tf.ones([Adj_block.shape[0], 1]))
            pooled = pooled/degree

        # Reweights the center node representation when aggregating it with its neighbors
        pooled = pooled + (1 + self.eps[layer])*h2
        pooled_rep = self.mlps[layer](pooled)

        h = self.batches[layer](pooled_rep)
        h = tf.nn.relu(h)
        h = tf.cast(h, tf.float32)
        return h

    def next_layer(self, h, layer,  Adj_block=None):
        # pooling neighboring nodes and center nodes altogether

        # If sum or average pooling
        pooled = tf.sparse.sparse_dense_matmul(Adj_block, h)
        if self.neighbor_pooling_type == "average":
            # If average pooling
            degree = tf.sparse.sparse_dense_matmul(
                Adj_block, tf.ones([Adj_block.shape[0], 1]))
            pooled = pooled/degree

        # representation of neighboring and center nodes
        pooled_rep = self.mlps[layer](pooled)

        h = self.batches[layer](pooled_rep)

        # non-linearity
        h = tf.nn.relu(h)
        return h

    def call(self, batch_graph):
        X_concat = tf.concat([graph.node_features for graph in batch_graph], 0)
        graph_pool = self.__preprocess_graphpool(batch_graph)

        Adj_block = self.__preprocess_neighbors_sumavepool(batch_graph)

        # list of hidden representation at each layer (including input)
        hidden_rep = [X_concat]
        h = X_concat

        for layer in range(self.num_layers-1):
            if not self.neighbor_pooling_type == "max" and self.learn_eps:
                h = self.next_layer_eps(h, layer, Adj_block=Adj_block)
            elif not self.neighbor_pooling_type == "max" and not self.learn_eps:
                h = self.next_layer(h, layer, Adj_block=Adj_block)
            hidden_rep.append(h)
        score_over_layer = 0

        start_idx = [0]

        graphNodesVec = []
        for i, graph in enumerate(batch_graph):
            start_idx.append(start_idx[i] + len(graph.g))
            graphNodesVec.append([])

        # perform pooling over all nodes in each graph in every layer
        for layer, h in enumerate(hidden_rep):
            h = tf.cast(h, tf.float32)
            linear_outcome = self.linears[layer](h)
            dropped_outcome = self.drops[layer](linear_outcome)
            score_over_layer += dropped_outcome

        resForLabelNodes = tf.sparse.sparse_dense_matmul(
            graph_pool, score_over_layer)

        # #perform pooling over all nodes in each graph in every layer
        # for layer, h in enumerate(hidden_rep):
        #     h = tf.cast(h,tf.float32).numpy()
        #     for i, graph in enumerate(batch_graph):
        #         head_forTheGraph = start_idx[i]
        #         tail_forTheGraph = head_forTheGraph + len(graph.g)
        #         graphNodesVec[i].append(h[head_forTheGraph:tail_forTheGraph])

        return resForLabelNodes  # vector for nodes in graphs
