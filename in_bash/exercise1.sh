#!/bin/bash
# This script defines a get_middle function that takes a single argument, the word for which you want to find the middle character(s).
# The function then calculates the length of the word, and based on whether the length is even or odd, it returns the middle character(s).
# The example usage demonstrates how to call the function and display the results

get_middle() {
  s="$1"
  length="${#s}"

  if [ $((length % 2)) -eq 0 ]; then
    # Even length
    middle1=$((length / 2 - 1))
    middle2=$((middle1 + 1))
    echo "${s:$middle1:1}${s:$middle2:1}"
  else
    # Odd length
    middle=$((length / 2))
    echo "${s:$middle:1}"
  fi
}

# Example usage:
word="test"
result=$(get_middle "$word")
echo "Middle character(s) of '$word': $result"

word="testing"
result=$(get_middle "$word")
echo "Middle character(s) of '$word': $result"

word="middle"
result=$(get_middle "$word")
echo "Middle character(s) of '$word': $result"