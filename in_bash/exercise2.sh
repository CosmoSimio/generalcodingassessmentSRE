#!/bin/bash

# This script defines a solution function that takes a single argument, the maximum number to check against for multiples of 3 or 5.
# The function iterates through all the numbers less than the maximum number and calculates the sum of the multiples of 3 or 5.
# The example usage demonstrates how to call the function and display the results.

solution() {
  number="$1"
  total_sum=0

  for ((i=0; i<number; i++)); do
    if [ $((i % 3)) -eq 0 ] || [ $((i % 5)) -eq 0 ]; then
      total_sum=$((total_sum + i))
    fi
  done

  echo "$total_sum"
}

# Example usage:
number=10
result=$(solution "$number")
echo "Sum of all multiples of 3 or 5 below '$number': $result"

number=200
result=$(solution "$number")
echo "Sum of all multiples of 3 or 5 below '$number': $result"