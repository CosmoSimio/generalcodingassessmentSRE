# Write a function called validBraces that takes a string of braces, and determines if the order of the braces is valid. validBraces should return true if the string is valid, and false if it's invalid.

# All input strings will be nonempty, and will only consist of open parentheses '(' , closed parentheses ')', open brackets '[', closed brackets ']', open curly braces '{' and closed curly braces '}'.

# What is considered Valid?

# A string of braces is considered valid if all braces are matched with the correct brace. For example:

# '(){}[]' and '([{}])' would be considered valid, while '(}', '[(])', and '[({})](]' would be considered invalid.

# Specification
# valid_braces(braces)
# Checks if the brace order is valid

# Parameters
# braces: String - A string representation of an order of braces

# Return Value
# Boolean - Returns true if order of braces are valid

# Examples:
# Input	Output	
# validBraces( "(){}[]" )	true	
# validBraces( "(}" )	false	
# validBraces( "[(])" )	false	
# validBraces( "([{}])" )	true

def valid_braces(braces: str) -> bool:
    stack = []
    brace_map = {')': '(', '}': '{', ']': '['}

    for brace in braces:
        if brace in brace_map.values():
            stack.append(brace)
        else:
            if not stack or stack.pop() != brace_map[brace]:
                return False

    if not stack:
        return True
    else:
        return False