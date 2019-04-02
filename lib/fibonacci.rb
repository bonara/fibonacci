# Computes the nth fibonacci number in the series starting with 0.
# fibonacci series: 0 1 1 2 3 5 8 13 21 ...
# e.g. 0th fibonacci number is 0
# e.g. 1st fibonacci number is 1
# ....
# e.g. 6th fibonacci number is 8

# Time complexity: O(n), where n is the nth fibonacci number.
# Space complexity: O(1)
def fibonacci(n)
  raise ArgumentError.new("Invalid input of #{n}") if n == nil || n < 0
  return 0 if n == 0
  return 1 if n == 1
  
  first_num = 0
  second_num = 1
  while n > 1
    value = first_num + second_num 
    first_num = second_num
    second_num = value
    n -= 1
  end
  return value
end
