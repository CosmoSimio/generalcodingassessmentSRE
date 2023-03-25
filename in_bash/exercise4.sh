#!/bin/bash

# This script defines a valid_braces function that takes a single argument, a string of braces, and determines if the order of the braces is valid.
# The function returns "true" if the string is valid, and "false" if it's invalid.
# The example usage demonstrates how to call the function and display the results.

valid_braces() {
  braces="$1"
  stack=()
  declare -A brace_map=( [")"]="(" ["]"]="[" ["}"]="{" )

  for ((i=0; i<${#braces}; i++)); do
    brace="${braces:$i:1}"
    if [[ "({[" =~ "$brace" ]]; then
      stack+=("$brace")
    else
      if [ "${#stack[@]}" -eq 0 ] || [ "${stack[-1]}" != "${brace_map[$brace]}" ]; then
        echo "false"
        return
      else
        unset stack[-1]
      fi
    fi
  done

  if [ "${#stack[@]}" -eq 0 ]; then
    echo "true"
  else
    echo "false"
  fi
}

# Example usage:
input="(){}[]"
output=$(valid_braces "$input")
echo "valid_braces('$input'): $output"

input="(}"
output=$(valid_braces "$input")
echo "valid_braces('$input'): $output"

input="[(])"
output=$(valid_braces "$input")
echo "valid_braces('$input'): $output"

input="([{}])"
output=$(valid_braces "$input")
echo "valid_braces('$input'): $output"