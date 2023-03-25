# Task
# You are provided a string containing a list of positive integers separated by a space (" "). 
# Take each value and calculate the sum of its digits, which we call its "weight".
# Then, return the list in ascending order by weight, as a string joined by spaces.

# For example 99 will have "weight" 18, 100 will have "weight" 1. In the output 100 will come before 99.

# Specification
# order_weight(strng)
# Parameters
# strng: String - String of space-delimited numbers which are to be put in order based on the sum ("weight") of their digits

# Return Value
# String - A string of digits ordered by their "weight"

# Example:

# "56 65 74 100 99 68 86 180 90" ordered by numbers weights becomes: "100 180 90 56 65 74 68 86 99"

# When two numbers have the same "weight", let's consider them to be strings and not numbers:

# 100 is before 180 because its "weight" (1) is less than that of 180 (9). 180 is before 90 since, having the same "weight" (9),
# "180" is ordered as less than "90" when compared lexicographically as strings.

# All numbers in the list are positive integers and the list can be empty.

def order_weight(s: str) -> str:
    
    def weight(number):
        return sum(int(digit) for digit in number)
    
    numbers = s.split()
    sorted_numbers = sorted(numbers, key=lambda x: (weight(x), x))
    
    return ' '.join(sorted_numbers)

# Example
s = "56 65 74 100 99 68 86 180 90"
result = order_weight(s)
print(result)  # Output: "100 180 90 56 65 74 68 86 99"