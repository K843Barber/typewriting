#!/bin/bash
chmod +x
# --------------------------- File calls ---------------------------
source src/text.sh
source src/fns.sh
source src/variables.sh
# --------------------------- bash command ---------------------------
clear
# --------------------------- Printing ---------------------------
# Line 1
main()
{
  function_doo_doos $s1
  function_doodoos "ROBCO INDUSTRIES (TM) UNIFIED OPERATING SYSTEM"
  function_doo_doos $s1

  # Line 2
  function_doo_doos $s2
  function_doodoos "COPYRIGHT 2075-2077 ROBCO INDUSTRIES"
  function_doo_doos $s2

  # Line 3
  function_doo_doos $s3
  function_doodoos "-SERVER 1-"
  function_doo_doos $s3
}

main
