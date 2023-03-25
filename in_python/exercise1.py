# You are going to be given a word. Your job is to return the middle character of the word.
# If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

# get_middle(str) == Finds the middle character(s) of a word.

# Parameters
# str: String == word to pull middle characters from

# Return Value
# String == letter(s) in the middle of the word

# Constraints
# 0 < str < 1000

# Examples:
# str	    Return Value
# "test"	  "es"
# "testing"	  "t"
# "middle"	  "dd"*/

def get_middle(s):
    length = len(s)
    
    if length % 2 == 0:
        # Even length
        middle1 = length // 2 - 1
        middle2 = middle1 + 1
        return s[middle1] + s[middle2]
    else:
        # Odd length
        middle = length // 2
        return s[middle]
    
# Examples
print(get_middle("test"))     # Output: "es"
print(get_middle("testing"))  # Output: "t"
print(get_middle("middle"))   # Output: "dd"