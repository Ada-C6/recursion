
# [Panopto at 2:50](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=202b1920-9501-4fd3-ae41-7b35a50166ff)
def factorial(n)
  if n == 1 || n == 0
    return 1
  else
    return n * factorial(n-1)
  end
end

# ### Write #2
# `reverse(s)`
# Write a method `reverse` that accepts a string as a parameter
# and then returns the reverse of the string.
#
# - e.g. reverse("hello") = "olleh"

def reverse(s)
  if s.length == 0
    return ""
  else
    return s[-1] + reverse(s[0..-2])
  end
end

# ### Write #3
# Write a method `bunny` that accepts an integer parameter n. N represents a
# number of bunnies and each bunny has two big floppy ears. We want to compute the total number of ears across all the bunnies recursively (without loops or multiplication).
#
# - e.g. bunny(0) = 0
# - e.g. bunny(1) = 2
# - e.g. bunny(10) = 20

def bunny(n)
  if n == 0
    return 0
  else
    return 2 + bunny(n-1)
  end
end



# ### Write #4
# `nested(s)`
# Write a method `nested` that accepts a string of only parenthesis
# and then returns if those parenthesis are properly nested. You may
# assume that no non-paren characters will be passed to this method.
#
# - e.g. nested("((()))") = true
# - e.g. nested("())") = false

def nested(s)
  if s.length == 0
    return true
  elsif s[0] == "(" && s[-1] == ")"
    return nested(s[1..-2])
  else
    return false
  end
end



# Factorial Tests
raise "factorial broke - factorial(4)" unless factorial(4) == 24
raise "factorial broke - factorial(0)" unless factorial(0) == 1
puts "passes all factorial tests"

# Reverse Tests
raise "reverse broke - reverse('hello')" unless reverse("hello") == "olleh"
raise "reverse broke - reverse('a b c')" unless reverse("a b c") == "c b a"
puts "passes all reverse tests"

# Bunny Tests
raise "bunny broke - bunny(0)" unless bunny(0) == 0
raise "bunny broke - bunny(10)" unless bunny(10) == 20
puts "passes all bunny tests"

# Nested Tests
raise "nested broke - nested('((()))')" unless nested("((()))") == true
raise "nested broke - nested('())')" unless nested("())") == false
puts "passes all nested tests"





### Added Fun ###

# ### fib(n)
# Write a recursive method `fib` that accepts an integer n as a parameter and returns the nth [fibonacci number](https://en.wikipedia.org/wiki/Fibonacci#Fibonacci_sequence).
#
# - e.g. fib(4) = (1 1 2) 3 = 3
#1 1 2 3 5 8 13 21 34 55

def fib(n)
  if n <= 2
    return 1
  else
    return 2 + fib(n-1)
  end
end

raise "fib broke - fib(5)" unless fib(5) == 5
raise "fib broke - fib(8)" unless fib(8) == 21
puts "passes all fib tests"



# ### pal(s)
# Write a recursive method `pal` that accepts a string s as a parameter and returns a boolean value indicating if that string is a [palindrome](https://en.wikipedia.org/wiki/Palindrome) or not.
#
# - e.g. pal("racecar") = true
# - e.g. pal("smile") = false

def pal(string)
  if string == ""
    return true
  elsif string[0] == string[-1]
    return pal(string[1..-2])
  else
    return false
  end
end

raise "pal broke - pal(anna)" unless pal("anna") == true
raise "pal broke - pal(cat)" unless pal("cat") == false
puts "passes all pal tests"


puts "All test passed"
