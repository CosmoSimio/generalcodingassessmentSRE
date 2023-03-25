#!/bin/bash

# This script defines weight and order_weight functions. The weight function takes a single argument, a number, and calculates the sum of its digits.
# The order_weight function takes a single argument, a string of space-delimited numbers, and sorts the numbers based on the sum ("weight") of their digits, with lexicographic
# comparison as a tiebreaker.
# The example usage demonstrates how to call the function and display the results.

weight() {
  number="$1"
  sum=0

  for ((i=0; i<${#number}; i++)); do
    digit="${number:$i:1}"
    sum=$((sum + digit))
  done

  echo "$sum"
}

order_weight() {
  strng="$1"
  numbers=( $strng )
  length=${#numbers[@]}

  for ((i=0; i<length-1; i++)); do
    for ((j=i+1; j<length; j++)); do
      weight_i=$(weight "${numbers[i]}")
      weight_j=$(weight "${numbers[j]}")

      if [ $weight_i -gt $weight_j ] || ([ $weight_i -eq $weight_j ] && [ "${numbers[i]}" \> "${numbers[j]}" ]); then
        temp="${numbers[i]}"
        numbers[i]="${numbers[j]}"
        numbers[j]="$temp"
      fi
    done
  done

  echo "${numbers[*]}"
}

# Example usage:
input="56 65 74 100 99 68 86 180 90"
result=$(order_weight "$input")
echo "Ordered by weights: $result"