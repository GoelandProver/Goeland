#!/bin/bash

nb_arg=$#
if [ $nb_arg -ne  0 ]
then 
  echo "bash make_exchanges_graph.sh"
else 
    # Convert
    python3 exchanges/convert_output_to_exchanges_tree.py

    echo "exchanges_tree.json generated !"
fi
