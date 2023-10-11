from turtle import shape
import easydict
import tensorflow as tf
from GNNModel import GraphCNN
import networkx as nx
import time
import tensorflow.python.keras.backend as K
import numpy as np


def init_layer(layer):
    session = K.get_session()
    weights_initializer = tf.variables_initializer(layer.weights)
    session.run(weights_initializer)


def enbeddedNodes_GNN(BLIFGraph, graphs, num_classes, startTime):

    GNNargs = easydict.EasyDict({
        "dataset": 'MUTAG',
        "device": 0,
        "batch_size": 32,
        "iters_per_epoch": 50,
        "epochs": 5,  # Change this back to 350 later
        "lr": 0.02,  # Change this back to 0.01 later
        "seed": 0,
        "fold_idx": 0,
        "num_layers": 4,
        "num_mlp_layers": 3,
        "hidden_dim": 64,
        "final_dropout": 0.2,
        "graph_pooling_type": 'sum',
        "neighbor_pooling_type": 'sum',
        "learn_eps": 'store_true',
        'degree_as_tag': 'store_true',
        'filename': 'output.txt'

    })

    endTime = time.time()
    print("GNN load_data done. time esclaped: ", endTime-startTime)

    print("num_classes=", num_classes)
    model = GraphCNN(GNNargs.num_layers, GNNargs.num_mlp_layers, GNNargs.hidden_dim, num_classes,
                     GNNargs.final_dropout, GNNargs.learn_eps, GNNargs.graph_pooling_type, GNNargs.neighbor_pooling_type)

    loss_object = tf.keras.losses.SparseCategoricalCrossentropy(
        from_logits=True)

    optimizer = tf.keras.optimizers.Adam(lr=GNNargs.lr)

    def train(args, model, train_graphs, opt, epoch):

        loss_accum = 0
        for i in range(0, args.epochs):
            batch_graph = train_graphs
            labels = tf.constant([graph.label for graph in batch_graph])
            loss_accum = 0
            with tf.GradientTape() as tape:
                output = model(batch_graph)
                loss = loss_object(labels, output)

            gradients = tape.gradient(loss, model.trainable_variables)
            gradient_variables = zip(gradients, model.trainable_variables)
            opt.apply_gradients(gradient_variables)
            loss_accum += loss
            print(f'loss training: {loss}')

        return loss_accum

    train(GNNargs, model, graphs, optimizer, GNNargs.epochs)

    endTime = time.time()
    print("GNN train done. time esclaped: ", endTime-startTime)

    nodeLabel_ori = nx.get_node_attributes(graphs[0].g, 'nodeLabel')
    nodeLabel = dict()
    for nodeId in BLIFGraph.nodes():
        if (not nodeId in nodeLabel.keys()):
            nodeLabel[nodeId] = 1
    nx.set_node_attributes(G=graphs[0].g, values=nodeLabel, name="nodeLabel")
    output = model(graphs).numpy()
    nx.set_node_attributes(
        G=graphs[0].g, values=nodeLabel_ori, name="nodeLabel")

    endTime = time.time()
    print("enbeddedNodes_GNN done. time esclaped: ", endTime-startTime)

    return output


def encodedEntireGraphWIthLabelOrder(cells, encodes, startTime):
    node2LabelOrder = np.zeros(shape=(encodes.shape), dtype=np.int8)
    for cellId, encode in enumerate(encodes):
        cells[cellId].setFeature(encode)

    endTime = time.time()
    print("encodedEntireGraphWIthLabelOrder done. time esclaped: ", endTime-startTime)

    return node2LabelOrder
