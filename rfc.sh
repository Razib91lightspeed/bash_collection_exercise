#!/bin/bash

# Get number of RFC files to fetch from command line argument
num=$1

# Fetch N random (N from command line argument) RFC files
for i in $(seq 1 $num)
do
    rfc_num=$(( RANDOM % 9000 + 1 ))
    curl -s "https://www.rfc-editor.org/rfc/rfc$rfc_num.txt" | head -n 1 | sed 's/^[^0-9]*\([0-9]\+\).*/RFC \1/'
    curl -s "https://www.rfc-editor.org/rfc/rfc$rfc_num.txt" | wc -l
done
