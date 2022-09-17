source fns.sh

# --------------------------- Lengths ---------------------------
sentence1=$(function_doodars ${#sentence_one})
sentence2=$(function_doodars ${#sentence_two})
sentence3=$(function_doodars ${#sentence_three})
dim_cols_update=$(function_doodars $(tput cols))

# --------------------------- Starting points ---------------------------
s1=$(($dim_cols_update-$sentence1))
s2=$(($dim_cols_update-$sentence2))
s3=$(($dim_cols_update-$sentence3))

# --------------------------- Variables ---------------------------
NN=0.015
