
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

def fib(n)
  if n <= 0
    return 0
  elsif n == 1
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

def pal(s)
  result = true
  if s[0] != s[-1]
    result = false
    return result
  elsif s.length > 1
    return pal(s[1..-2])
  end
  return result
end
