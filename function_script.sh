#!/bin/bash
# function to check if input is integer
is_integer() {
  [[ "$1" =~ ^[0-9]+$ ]]
}

# function for arithmetic operations
calc() {
  INT1=$1
  INT2=$2
  SUM=$((INT1 + INT2))
  DIFF=$((INT1 - INT2))
  PROD=$((INT1 * INT2))
  DIV=$((INT1 / INT2))
  echo "Sum: $SUM"
  echo "Difference: $DIFF"
  echo "Product: $PROD"
  echo "Division: $DIV"
}

# reading integers interactively or from command line
if [ $# -eq 2 ]; then
  calc $1 $2
else
  read -p "Enter first integer: " INT1
  while ! is_integer "$INT1"; do
    read -p "Invalid input. Enter first integer: " INT1
  done

  read -p "Enter second integer: " INT2
  while ! is_integer "$INT2"; do
    read -p "Invalid input. Enter second integer: " INT2
  done

  calc $INT1 $INT2
fi
