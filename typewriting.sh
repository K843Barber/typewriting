#!/bin/bash
source text.sh
source fns.sh
source variables.sh
clear


# --------------------------- Printing ---------------------------
# Line 1
main()
{
  function_doo_doos $s1
  while [ ${#sentence_one} -gt 0 ]; do
    printf '%b' '\033[1m'"${sentence_one%${sentence_one#?}}"'\033[0m'
    sentence_one=${sentence_one#?}
    sleep $NN
  done
  function_doo_doos $s1

  # Line 2
  function_doo_doos $s2
  while [ ${#sentence_two} -gt 0 ]; do
    printf '%b' '\033[1m'"${sentence_two%${sentence_two#?}}"'\033[0m'
    sentence_two=${sentence_two#?}
    sleep $NN
  done
  function_doo_doos $s2

  # Line 3
  function_doo_doos $s3
  while [ ${#sentence_three} -gt 0 ]; do
    printf '%b' '\033[1m'"${sentence_three%${sentence_three#?}}"'\033[0m'
    sentence_three=${sentence_three#?}
    sleep $NN
  done
  function_doo_doos $s3
}

main
