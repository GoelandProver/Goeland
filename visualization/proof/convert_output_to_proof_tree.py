import json
import jsons
import copy
import os


class json_object:
  def __init__(self, formula, rule, children):
    self.formula = formula
    self.rule = rule
    self.children = children

f = open("./json/proof_output.json", "r")
f_json = json.load(f)
remaining_element = copy.deepcopy(f_json)
f.close()

# Function which return a new json_object
def to_tree (l):
  for e in l:
    if e['Children'] == [] and len(l) == 1:
      return json_object(e['Formula'], e['Rule'], set())
    elif e['Children'] == [] and len(l) > 1:
      return json_object(e['Formula'], e['Rule'],[to_tree(l[1:])])
    elif e['Children'] != None and len(e['Children']) > 0 :
      children = set()
      # c is a list
      for c in e['Children']:
        children.add(to_tree(c))
      return json_object(e['Formula'], e['Rule'], children)
    else:
      return json_object(e['Formula'], e['Rule'], set())
  

root_element = to_tree(remaining_element)

f2 = open("./json/proof_tree.json", "w")
f2.write(jsons.dumps(root_element))
f2.close()


