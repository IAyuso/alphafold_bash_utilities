#!/bin/bash
if [ -d "./relaxed_models_all" ]
	then
		input="list.txt"
		while IFS= read -r line
		do
			echo "$line"
  			mv out.$line $line
  			cd ./$line/$line
  			mv relaxed_model_1.pdb $line.pdb
  			cp $line.pdb ../../relaxed_models_all
  			cd ../../
		done < "$input"
	else
		mkdir relaxed_models_all
		input="list.txt"
		while IFS= read -r line
		do
 			echo "$line"
  			mv out.$line $line
  			cd ./$line/$line
  			mv relaxed_model_1.pdb $line.pdb
  			cp $line.pdb ../../relaxed_models_all
  			cd ../../
		done < "$input"
	fi


