#!/bin/bash

nb_arg=$#
if [ $nb_arg -ne  0 ]
then 
  echo "bash make_proof_tree.sh"
else 
    # Convert
    python3 proof/convert_output_to_proof_tree.py

    echo "proof_tree.json generated !"
fi
