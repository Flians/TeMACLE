import networkx as nx
from pycryptosat import Solver


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
    idMap_G2 = {}
    solver = Solver()

    # vertex matching
    jMatch = [[] for _ in range(n2)]
    for i in range(n1):
        iMatch = []
        for j in range(n2):
            if G1.nodes[nodes_G1[i]]['type'] == G2.nodes[nodes_G2[j]]['type'] and \
                    G1.out_degree(nodes_G1[i]) == G2.out_degree(nodes_G2[j]):
                var = getVar(n2, i, j, True)
                iMatch.append(var)
                jMatch[j].append(var)
            else:
                solver.add_clause([getVar(n2, i, j, False)])
        solver.add_clause(iMatch)
    for j in range(n2):
        idMap_G2[nodes_G2[j]] = j
        solver.add_clause(jMatch[j])

    # edge matching
    for i in range(n1):
        for j in range(1, n1):
            if not G1.has_edge(nodes_G1[i], nodes_G1[j]):
                for src, tar in G2.out_edges():
                    solver.add_clause([getVar(n2, i, idMap_G2[src], False), getVar(n2, j, idMap_G2[tar], False)])

    # solve the model
    sat, solution = solver.solve()
    if sat != nx.is_isomorphic(G1, G2):
        assert (False)
    return sat
