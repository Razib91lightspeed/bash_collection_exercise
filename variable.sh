#!/bin/bash
# defining and printing static variables
VAR1="Hello"
VAR2="World"
VAR3="!"
echo $VAR1 $VAR2 $VAR3

# joining variables
VAR4="$VAR1 $VAR2 $VAR3"
echo $VAR4

# calculating sum
SUM=$((2+3+4))
echo "Sum: $SUM"
