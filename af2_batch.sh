#!/bin/bash
input="list.txt"
while IFS= read -r line
do
  echo "$line"
  run.sh -d $ALPHAFOLD_DATA -o out.$line -g False -m model_1 -f $line.fas -t 2020-05-14
  
done < "$input"


