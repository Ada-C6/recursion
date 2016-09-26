def fib(n)
  if n == 1
    return 1
  elsif n == 2
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

def pal(s)
  if s.length == 0
    return true
  elsif s.length == 1
    return true
  elsif s[0] == s[-1]
    return pal(s[1..-2])
  else
    return false
  end
end


# Fibanocci Tests
raise "fib broke - fib(8)" unless fib(8) == 21
raise "fib broke - fib(20)" unless fib(20) == 6765
raise "fib broke - fib(1)" unless fib(1) == 1
raise "fib broke - fib(2)" unless fib(2) == 1
puts "passes all fibanocci tests"

# # Palindrome Tests
raise "pal broke - pal('racecar')" unless pal("racecar") == true
raise "pal broke - pal('helloworld')" unless pal("helloworld") == false
raise "pal broke - pal('')" unless pal("") == true
puts "passes all palindrome tests"

def power(base,exp)
  if exp==1
    return base
  else
    return base * power(base, exp - 1)
  end

end


def binary(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  end
  if n.odd?
    return 1 + binary(n-1)
  elsif  n % 2 ** x == 0
    return binary(n-1) + (10 ** x - 1)
  end
end 


# def travel(x,y)
# end

# # Binary Tests
# raise "binary broke - binary(1)" unless binary(1) == "0 1 "
# raise "binary broke - binary(2)" unless binary(2) == "00 01 10 11 "#
# # Travel Tests
# raise "travel broke - travel(1,2)" unless travel(1,2) == "ENN NEN NNE "
# raise "travel broke - travel(2,2)" unless travel(2,2) == "EENN ENEN ENNE NEEN NENE NNEE "

puts "All test passed"
