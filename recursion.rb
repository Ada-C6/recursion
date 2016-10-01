
def fact(n)
  if n == 1 || n == 0
    return 1
  elsif n < 0
    raise ArgumentError.new("n must be greater than or equal to 0")
  else
    return n * fact(n-1)
  end
end

def reverse(s)
  var = ""
  if s == ""
    return var
  else
    var = s[-1] + reverse(s.chop)
  end
  return var
end

def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n-1)
  end
end

# Write a method `nested` that accepts a string of only parenthesis
# and then returns if those parenthesis are properly nested. You may
# assume that no non-paren characters will be passed to this method.
# - e.g. nested("((()))") = true
# - e.g. nested("())") = false
def nested(s)
end

# Write a recursive method `fib` that accepts an integer n as a parameter and returns the nth [fibonacci number](https://en.wikipedia.org/wiki/Fibonacci#Fibonacci_sequence).
# - e.g. fib(4) = (1 1 2) 3 = 3
def fib(n)
end

# Write a recursive method `pal` that accepts a string s as a parameter and returns a boolean value indicating if that string is a [palindrome](https://en.wikipedia.org/wiki/Palindrome) or not.
# - e.g. pal("racecar") = true
# - e.g. pal("smile") = false
def pal(s)
end



# Factorial Tests
# raise "factorial broke - fact(4)" unless fact(4) == 24
# raise "factorial broke - fact(0)" unless fact(0) == 1
# puts "passes all factorial tests"

# Reverse Tests


# puts "All test passed"
