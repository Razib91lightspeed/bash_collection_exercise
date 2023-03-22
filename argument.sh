#!/bin/bash

ARG1=$1
ARG2=$2

echo "Sum: $((ARG1 + ARG2))"
echo "Difference: $((ARG1 - ARG2))"
echo "Product: $((ARG1 * ARG2))"

if [ "$ARG2" -eq 0 ]
then
    echo "Division: undefined"
else
    echo "Division: $((ARG1 / ARG2))"
fi


