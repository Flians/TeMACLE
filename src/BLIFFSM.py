import networkx as nx
from pycryptosat import Solver
import networkx.algorithms.isomorphism as iso


def getVar(n: int, i: int, j: int, isTrue: bool = True) -> int:
    var = n * i + j + 1
    return var if isTrue else -var


def SATMatch(G1: nx.DiGraph, G2: nx.DiGraph) -> bool:
    nodes_G1 = list(G1.nodes)
    nodes_G2 = list(G2.nodes)
    n1 = len(nodes_G1)
    n2 = len(nodes_G2)
    if n1 != n2:
        return False
    idMap_G1 = {}
    idMap_G2 = {}
    solver = Solver()

    # vertex matching
    jMatch = [[] for _ in range(n2)]
    for i in range(n1):
        idMap_G1[nodes_G1[i]] = i
        iMatch = []
        for j in range(n2):
            if G1.nodes[nodes_G1[i]]['type'] == G2.nodes[nodes_G2[j]]['type'] and \
                    G1.out_degree(nodes_G1[i]) == G2.out_degree(nodes_G2[j]):
                var = getVar(n2, i, j, True)
                iMatch.append(var)
                jMatch[j].append(var)
            else:
                solver.add_clause([getVar(n2, i, j, False)])
        if iMatch:
            solver.add_clause(iMatch)
        else:
            return False
    for j in range(n2):
        idMap_G2[nodes_G2[j]] = j
        if jMatch[j]:
            solver.add_clause(jMatch[j])
        else:
            return False

    # vertex unique mapping
    for i in range(n1):
        for j in range(n2):
            for k in range(j + 1, n2):
                solver.add_clause([getVar(n2, i, j, False), getVar(n2, i, k, False)])
                solver.add_clause([getVar(n2, j, i, False), getVar(n2, k, i, False)])

    # edge Attributes
    for k in range(n2):
        for l in range(n2):
            if k == l:  # no self-loop
                continue
            if not G2.has_edge(nodes_G2[k], nodes_G2[l]):
                for src, tar in G1.out_edges():
                    solver.add_clause([getVar(n2, idMap_G1[src], k, False), getVar(n2, idMap_G1[tar], l, False)])
            if not G1.has_edge(nodes_G1[k], nodes_G1[l]):
                for src, tar in G2.out_edges():
                    solver.add_clause([getVar(n2, k, idMap_G2[src], False), getVar(n2, l, idMap_G2[tar], False)])

    # edge attribute Attributes
    for src1, tar1 in G1.out_edges():
        for src2, tar2 in G2.out_edges():
            if G1[src1][tar1]['pins'] != G2[src2][tar2]['pins']:
                solver.add_clause([getVar(n2, idMap_G1[src1], idMap_G2[src2], False), getVar(n2, idMap_G1[tar1], idMap_G2[tar2], False)])

    # solve the model
    sat, solution = solver.solve()
    '''
    vf2 algorithm
    [1] L. P. Cordella, P. Foggia, C. Sansone, M. Vento, "An Improved Algorithm for Matching Large Graphs",
        3rd IAPR-TC15 Workshop  on Graph-based Representations in Pattern Recognition, Cuen, pp. 149-159, 2001.
        https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.101.5342
    '''
    # if sat != nx.is_isomorphic(G1, G2, node_match=iso.categorical_node_match("type", None), edge_match=iso.categorical_edge_match("pins", None)):
    #    assert False
    return sat
