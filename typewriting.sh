#!/bin/bash

# --------------------------- Number of Columns ---------------------------
dim_cols=$(tput cols)

if [ $((dim_cols%2)) -eq 0 ]
  then
    dim_cols=$dim_cols
  else
    ((dim_cols++))
fi

dim_cols_update=$((dim_cols/2))

# echo $dim_cols_update

# --------------------------- Sentences ---------------------------
sentence_one="ROBCO INDUSTRIES (TM) UNIFIED OPERATING SYSTEM"
sentence_two="COPYRIGHT 2075-2077 ROBCO INDUSTRIES"
sentence_three="-SERVER 1-"

sentence_length_one=${#sentence_one}
sentence_length_two=${#sentence_two}
sentence_length_three=${#sentence_three}

# echo $sentence_length_one
# echo $sentence_length_two
# echo $sentence_length_three

function_doodars()
{
  local var2
  if [ $(($1%2)) == 0 ]
  then
    var2=$1
    echo $(($var2/2))
  else
    var2=$(($1+1))
    echo $(($var2/2))
  fi
}

# declare -i y=11
# echo $((y%2))
# var3=$(function_doodars $y)

sentence1=$(function_doodars $sentence_length_one)
sentence2=$(function_doodars $sentence_length_two)
sentence3=$(function_doodars $sentence_length_three)
echo $(($dim_cols_update-$sentence1))
echo $sentence2
echo $sentence3

# echo $dim_cols

# ------------------ Successfully made function for this ------------------
# if [ $((sentence_length_one%2)) -eq 0 ]
#   then
#     sentence_length_one=$sentence_length_one
#   else
#     ((sentence_length_one++))
# fi

# if [ $((sentence_length_two%2)) -eq 0 ]
#   then
#     sentence_length_two=$sentence_length_two
#   else
#     ((sentence_length_two++))
# fi

# if [ $((sentence_length_three%2)) -eq 0 ]
#   then
#     sentence_length_three=$sentence_length_three
#   else
#     ((sentence_length_three++))
# fi

# # --------------------------- Maths behind where to print ---------------------------
sentence_length_one_correct=$((sentence_length_one/2))
# sentence_length_two_correct=$((sentence_length_two/2))
# sentence_length_three_correct=$((sentence_length_three/2))

start_point_one=$(($dim_cols_update-$sentence1))
# start_point_two=$(($dim_cols_update-$sentence_length_two_correct))
# start_point_three=$(($dim_cols_update-$sentence_length_three_correct))

# --------------------------- Variables ---------------------------
NN=0.05

# --------------------------- Printing ---------------------------
# Line 1
for i in $(seq 1 $start_point_one); do printf ' '; done
while [ ${#sentence_one} -gt 0 ]; do
  printf '%s' "${sentence_one%${sentence_one#?}}"
  sentence_one=${sentence_one#?}
  sleep $NN
done
for i in $(seq 1 $start_point_one); do printf ' '; done

# # Line 2
# for i in $(seq 1 $start_point_two); do printf ' '; done
# while [ ${#sentence_two} -gt 0 ]; do
#   printf '%s' "${sentence_two%${sentence_two#?}}"
#   sentence_two=${sentence_two#?}
#   sleep $NN
# done

# for i in $(seq 1 $start_point_two); do printf ' '; done

# # Line 3
# for i in $(seq 1 $start_point_three); do printf ' '; done
# while [ ${#sentence_three} -gt 0 ]; do
#   printf '%s' "${sentence_three%${sentence_three#?}}"
#   sentence_three=${sentence_three#?}
#   sleep $NN
# done
# for i in $(seq 1 $start_point_three); do printf ' '; done





# #----------------------------------- Excess ----------------------------------------
# # printf %s "$sentence_two"
# # printf %s "$sentence_three"
# # # # echo ${#sentence1}
# # for i in $(seq 1 $sentence_one); do printf %s "sentence_one"; sleep 0.1; done


# # for ((i=0; i<${#sentence_one}; i++)); do echo "${sentence_one:$i:1}"; sleep 0.1;done

# # var="thingtoprint"
# # for i in ` seq ${#var}`
# # do
# #   echo ${var:$i:1}
# # done

# # for char in $sentence_one; do printf "%q" $char; sleep 0.2; done
# # while [ ${#sentence_one} -gt 0 ]; do
# #   printf '%s' "${sentence_one%${sentence_one#?}}"
# #   sentence_one=${sentence_one#?}
# #   sleep 0.2
# # done

# # s='Hi every one. How are you all ....'

# # # char by char
# # while [ ${#s} -gt 0 ]; do
# #   printf '%s' "${s%${s#?}}"
# #   s=${s#?}
# #   sleep 0.2
# # done


# my_function()
# {
#   echo "some result"
#   return 55
# }
# my_function


# sentence_one="ROBCO INDUSTRIES (TM) UNIFIED OPERATING SYSTEM"
# sentence_two="COPYRIGHT 2075-2077 ROBCO INDUSTRIES"
# sentence_three="-SERVER 1-"

# sentence_length_one=${#sentence_one}
# sentence_length_two=${#sentence_two}
# sentence_length_three=${#sentence_three}

# length_fn()
# {
#   length=$1
#   if [ $(($length%2)) -eq 0 ]
#     then
#       length=$length
#     else
#       (($length++))
#   fi
#   return $length
# }

# echo ${#sentence_one}
# VAR=$length_fn ${#sentence_one}
# # echo $VAR

# # VAR=$(length_fn $sentence_length_one)
# # echo $length_fn $sentence_length_two
# # length_fn $sentence_length_three
# # echo $VAR
# # sentence_length_one_correct=$((sentence_length_one/2))
# # sentence_length_two_correct=$((sentence_length_two/2))
# # sentence_length_three_correct=$((sentence_length_three/2))

# # start_point_one=$(($dim_cols_update-$sentence_length_one_correct))
# # # start_point_two=$(($dim_cols_update-$sentence_length_two_correct))
# # # start_point_three=$(($dim_cols_update-$sentence_length_three_correct))

# # # --------------------------- Variables ---------------------------
# # NN=0.05

# # # --------------------------- Printing ---------------------------
