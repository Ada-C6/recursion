
def fact(n)
  if n == 1
    return 1
  else
    return n*fact(n-1)
  end
end

def reverse(s)
end

def nested(s)
end

# Factorial Tests
raise "factorial broke - fact(4)" unless fact(4) == 24
raise "factorial broke - fact(0)" unless fact(0) == 1
puts "passes all factorial tests"

# Reverse Tests


puts "All test passed"
