import json
import jsons
import copy
import os


class version_object:
  def __init__(self, num, forms, mm, mc, ss, sr, f):
    self.num = num
    self.forms = forms
    self.mm = mm
    self.mc = mc
    self.ss = ss
    self.sr = sr
    self.f = f


class json_object:
  def __init__(self, name, version, parent, children):
    self.name = name
    self.version = version
    self.parent = parent
    self.children = children

  def __repr__(self):
      res = "name = "+str(self.name)+" version = "+str(self.version) + \
                          ", parent = "+str(self.parent)+", children = ["
      for c in self.children:
        res = res+str(c)+" - "
      res += "]"
      return res

  def __str__(self):
      res = "name = "+str(self.name)+" version = "+str(self.version) + \
                          ", parent = "+str(self.parent)+", children = ["
      for c in self.children:
        res = res+str(c)+" - "
      res += "]"
      return res


def get_last_utf8_char(f, ignore_newlines=True):
    """
    Reads the last character of a UTF-8 text file.
    :param filename: The path to the text file to read
    :param ignore_newlines: Set to true, if the newline character at the end of the file should be ignored
    :return: Returns the last UTF-8 character in the file or None, if the file is empty
    """

    last_char = None

    # Reads last 4 bytes, as the maximum size of an UTF-8 character is 4 bytes
    num_bytes_to_read = 4

    # If ignore_newlines is True, read two more bytes, as a newline character
    # can be up to 2 bytes (eg. \r\n)
    # and we might have a newline character at the end of file
    # or size bytes, if file's size is less than 4 bytes
    if ignore_newlines:
      num_bytes_to_read += 2

      size = os.fstat(f.fileno()).st_size
      f.seek(-min(num_bytes_to_read, size), os.SEEK_END)
      last_bytes = f.read()

      # Find the first byte of a UTF-8 character, starting
      # from the last byte
      offset = -1
      while abs(offset) <= len(last_bytes):
          b = last_bytes[offset]
          if ignore_newlines and b in b'\r\n':
              offset -= 1
              continue
          if b & 0b10000000 == 0 or b & 0b11000000 == 0b11000000:
              # If this is first byte of a UTF8 character,
              # interpret this and all bytes after it as UTF-8
              last_char = last_bytes[offset:].decode('utf-8')
              break
          offset -= 1

      if last_char and ignore_newlines:
          last_char = last_char.replace('\r', '').replace('\n', '')

      return last_char


# Fromat json
add_end = False
f = open("./json/exchanges_output.json", "rb")
if get_last_utf8_char(f) != "]":
  add_end = True
f.close

if add_end:
  f = open("./json/exchanges_output.json", "a")
  f.write("]")
  f.close()

f = open("./json/exchanges_output.json", "r")
f_json = json.load(f)
remaining_element = copy.deepcopy(f_json)
f.close()


# Json formatted
dict_json = {}

# Find the root
root_element = {}
for e in remaining_element:
  if e['Name'] == e['Father']:
    new_element = json_object(e['Name'], {}, e['Father'], set())
    new_element.version[e['Version']] = version_object(
        e['Version'], e['Forms'], e['MM'], e['MC'], e['Subst_sent'], e['Subst_received'], e['Function'])
    dict_json[new_element.name] = new_element
    root_element = new_element
    remaining_element.remove(e)

# For each level
candidate_node = []
candidate_node.append(root_element)

while len(remaining_element) > 0:
  next_candidate = []

  # On parcours les noeuds et on regarde si on a des enfants qui traînent
  for candidate in candidate_node:
    new_remaining_element = []
    for re in remaining_element:
      # var new pour savoir si on fait une insertino ou une maj
      new = True
      old_element = None
      # Pour chaque élément de remaining children, on le transforme en struc json
      new_element = json_object(re['Name'], {}, re['Father'], set())
      new_version = version_object(re['Version'], re['Forms'], re['MM'], re['MC'], re['Subst_sent'], re['Subst_received'], re['Function'])
      num_version = re['Version']

      # S'il n'est pas le dictionnaire on l'ajoute
      if not(new_element.name in dict_json):
        new_element.version[num_version] = new_version
        dict_json[new_element.name] = new_element
      else:
        new = False
        old_element = dict_json[new_element.name]
        new_element = dict_json[new_element.name]
        if num_version not in old_element.version:
          new_element.version[num_version] = new_version

      # Si c'est un de nos enfants, on regarde si on a pas déjà ajouté une autre version de lui, si oui met à jour
      if new_element.parent == candidate.name:
        if old_element not in candidate.children:
          dict_json[candidate.name].children.add(new_element)
        else:
          dict_json[candidate.name].children.remove(old_element)
          dict_json[candidate.name].children.add(new_element)
      else:
        new_remaining_element.append(re)
    
    remaining_element = new_remaining_element
    next_candidate = next_candidate + list(candidate.children)

  candidate_node = next_candidate
    

f2 = open("./json/exchanges_tree.json", "w")
f2.write(jsons.dumps(root_element))
f2.close()


