#!/bin/bash
# function to check if input is integer
is_integer() {
  [[ "$1" =~ ^[0-9]+$ ]]
}

# reading integers interactively
read -p "Enter first integer: " INT1
while ! is_integer "$INT1"; do
  read -p "Invalid input. Enter first integer: " INT1
done

read -p "Enter second integer: " INT2
while ! is_integer "$INT2"; do
  read -p "Invalid input. Enter second integer: " INT2
done

# calculating sum, difference, product, and division
SUM=$((INT1 + INT2))
DIFF=$((INT1 - INT2))
PROD=$((INT1 * INT2))
DIV=$((INT1 / INT2))

# printing results
echo "Sum: $SUM"
echo "Difference: $DIFF"
echo "Product: $PROD"
echo "Division: $DIV"
