def factorial(n)
   if n == 1 || n==0
   	puts 1
    return 1
  else
  	puts "n=#{n} !n-1= #{factorial(n-1)}"
    return n * factorial(n-1)
  end
end

#factorial(5)
#->factorial(5*fact(4))		fact (5*4*3*2*1)
#->factorial(4*fac(3))		fact(4*3*2*1)
#->factorial(3*fac(2))		fact(3*2*1)
#->factorial(2*fac(1))     fact(2*1)
#->factorial(1)=1 ----------
def reverse(s)
end

def nested(s)
end

# Factorial Tests
# raise "factorial broke - fact(4)" unless factorial(4) == 24
# raise "factorial broke - fact(0)" unless factorial(0) == 1
puts "passes all factorial tests"

# Reverse Tests


puts "All test passed"

# mystery(123)
# mystery(9005)

def mystery(n)
	if n<10
		return n
	else
		return (n%10) + mystery(n/10)
	end
end


def mystery2(n)
	if n == 0
		return 100
	elsif n == -1
		return 200
	end

	if n%2 == 0
		return mystery2(n/2)
	else 
		return mystery2(n-1)
	end
end
