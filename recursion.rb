
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

# This works with the examples given. However, in the case of something like "()(()())",
# it fails. Technically, that example is nested correctly, but in a horrid manner. I
# think the example we did during class, where ( = 1 and ) = -1 would be a better
# approach, in that case, summing the numbers and returning false if the total became
# negative.
def nested(s)
  result = true
  if s.length % 2 == 1
    result = false
    return result
  elsif s[0] == s[-1]
    result = false
    return result
  elsif s.length >= 2
    return nested(s[1..-2])
  end
  return result
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
