#
# def fact(n)
#   if n == 1
#     return 1
#   else
#     return  n * fact(n-1)
#     # n = -1 unattainable base case
#     # => stack overflow/infinite loop
#     # activation chain: the actual execution each step in the loop
#     # record: one call to the method/one level of the bubble
#     # tail recursion: no computation in recursive line
#     # common use: true or false
#     # helper method: call another method
#   end
# end

# def mystery(n)
#   if n < 10
#     return n
#   else
#     return(n%10)+mystery(n/10)
#   end
# end

def reverse(s)
  if s.length == 0 || s.length == 1
    return s
  else
    return s[s.length - 1] + reverse(s.slice(0, s.length-1))
  end
end
puts reverse("hello")
# => "olleh"

def nested(s)
  if  s.length == 0
    return true
  end
  if s.length % 2 != 0
    return false
  end
  if s[0] != "("
    return false
  end
  if s[s.length - 1] != ")"
    return false;
  end
  return nested(s.slice(1, s.length - 2))
end
puts nested("((()))")
# => true
puts nested("())")
# => false

# Factorial Tests
# raise "factorial broke - fact(4)" unless fact(4) == 24
# raise "factorial broke - fact(0)" unless fact(0) == 1
# puts "passes all factorial tests"

# Reverse Tests

# raise "reverse broke - fact('hello')" unless reverse("hello") == "olleh"

# puts "All test passed"
