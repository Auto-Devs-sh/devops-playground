#!/usr/bin/env bash
#
# script.sh - Simple introduction to good pratices with shell script
#
# Website:       https://github.com/guilhermegules/devops-playground
# Author:        Guilherme Gules Moreira
# Maintenance:   Guilherme Gules Moreira
#
# ------------------------------------------------------------------------ #
# WHAT IT DOES?
# Simple calculator for sum, subtract, 
#
# HOW TO USE IT?
# Examples:
# $ ./script.sh
#
# ------------------------------------------------------------------------ #
# Changelog:
#   - v0.1 - simple implementation
# ------------------------------------------------------------------------ #
# Tested on:
#   bash 5.0.17
# ------------------------------------------------------------------------ #

# -------------------------------VARIABLES----------------------------------------- #
NUMBER_1=0
NUMBER_2=0
OPTION=0
# ------------------------------------------------------------------------ #

# -------------------------------TESTS----------------------------------------- #

# ------------------------------------------------------------------------ #
# -------------------------------FUNCTIONS----------------------------------------- #
insert_numbers() {
  read -p "Enter first number > " NUMBER_1
  read -p "Enter second number > " NUMBER_2
}

multiplication () {
  insert_numbers
  echo $(($NUMBER_1 * $NUMBER_2))
}

div () {
  insert_numbers
  echo $(($NUMBER_1 / $NUMBER_2))
}

sub () {
  insert_numbers
  echo $(($NUMBER_1 - $NUMBER_2))
}

sum () {
  insert_numbers
  echo $(($NUMBER_1 + $NUMBER_2))
}

main () {
  read -p "Enter your operation
  1) - Sum 
  2) - Sub
  3) - Multiplication
  4) - Div
  > " OPTION

  case $OPTION in
  1) sum ;;
  2) sub ;;
  3) multiplication ;;
  4) div ;;
  *) echo "Incorect option" ;;
  esac
}
# ------------------------------------------------------------------------ #

# -------------------------------EXECUTION----------------------------------------- #
main
# ------------------------------------------------------------------------ #