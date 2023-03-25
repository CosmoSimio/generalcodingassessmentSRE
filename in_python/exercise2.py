# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

# Specification
# solution(number)
# Finds the sum of multiples of 3 or 5 that is less than the provided number

# Parameters
# number: Integer - Maximum number to check against

# Return Value
# Integer - Sum of all multiples of either 3 or 5

# Examples
# number   Return Value
# 10	      23
# 200	     9168

def solution(number):
    total_sum = 0
    
    for i in range(number):
        if i % 3 == 0 or i % 5 == 0:
            total_sum += i
            
    return total_sum

# Examples
print(solution(10))   # Output: 23
print(solution(200))  # Output: 9168