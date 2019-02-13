
import sys
import networkx
import pygraphviz
import pandas as pd

if 2 != len(sys.argv):
    print("Usage: python component_stability.py <dotfile>")
    exit(1)

dotfile = sys.argv[1]

g = networkx.drawing.nx_agraph.read_dot(dotfile)

in_degree_dict = dict(g.in_degree())
out_degree_dict = dict(g.out_degree())

keys = list(in_degree_dict.keys())

in_degree_list = [in_degree_dict[key] for key in keys]
out_degree_list = [out_degree_dict[key] for key in keys]

df = pd.DataFrame.from_dict({
    'in_degree':in_degree_list,
    'out_degree':out_degree_list})
df.index = keys
df = df.assign(stability=df.in_degree-df.out_degree)
df = df.sort_values(by='stability', ascending=False)

csvfile = dotfile + '.stability.tsv'
df.to_csv(csvfile, sep='\t')

exit(0)
