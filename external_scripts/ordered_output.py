import re
import os
import sys

if len(sys.argv) != 2:
  print("file needed")
else:
  file = sys.argv[1]
  f = open(file, "r")
  f2 = open(file[:-4]+"_ordered.ans", "w")

  id_set = set()

  pairs = []
  for line in f:
    header = re.search("\[[0-9]*\.[0-9]*s\]\[[0-9]*\]", line)
    if header != None:
      res = header.group(0).split("][")
      pairs.append((float(res[0][1:-1]), int(res[1][:-1]), line))
      id_set.add(int(res[1][:-1]))


  sorted_pairs = sorted(pairs, key=lambda x: (x[1],x[0]))

  cpt_max = 0
  cpt_tmp = 0
  prev = 1
  id_max = 1
  for a,b,c in sorted_pairs:
      f2.write(c)
      if prev == b:
        cpt_tmp+=1
      else:
        if (cpt_tmp > cpt_max and prev != 1):
          id_max=prev
          cpt_max=cpt_tmp
        cpt_tmp=0
        prev = b



  print("Nb de processus générés : "+str(len(id_set)))
  print("id_max = "+str(id_max)+", cpt_max = "+str(cpt_max))
  f.close()
  f2.close()
