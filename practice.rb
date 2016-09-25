def power(base,exp)
	return 1 if exp==0 
	return base if exp==1
	return base*power(base,exp-1)
end

def fib(n)
	return n if n==0 or n==1
	return fib(n-1)+fib(n-2)
end

def pal(s)
	return true if s=="" 
	length=s.length
	midpont=s.length/2
	
	#delete middle character if string has odd number of letters
	s[midpont]='' if length%2 != 0
	
	#if only two letters left, check if they are the same.
	#if they are then it is a palidrome (return true)
	#otherwise it is not a palidrome
	if length==2 
		if s[0]==s[1]
			return true
		else
			return false
		end
	end

	#see if the two middle letters are the same 
	#and if they are check if the rest of the middle letters are the same
	return (pal(s.slice!(midpont-1..midpont)) and pal(s))
end


# Fibanocci Tests
raise "fib broke - fib(8)" unless fib(8) == 21
raise "fib broke - fib(20)" unless fib(20) == 6765
raise "fib broke - fib(1)" unless fib(1) == 1
raise "fib broke - fib(2)" unless fib(2) == 1
puts "passes all fibanocci tests"

# Palindrome Tests
raise "pal broke - pal('racecar')" unless pal("racecar") == true
raise "pal broke - pal('deleveled')" unless pal("deleveled") == true
raise "pal broke - pal('helloworld')" unless pal("helloworld") == false
raise "pal broke - pal('')" unless pal("") == true
puts "passes all palindrome tests"

#Power Tests
raise "power broke - power(2,3)" unless power(2,3) == 8
raise "power broke - power(2,4)" unless power(2,4) == 16
raise "power broke - power(9000,0)" unless power(9000,0) == 1
raise "power broke - power(243,12)" unless power(243,3) == 14348907
raise "power broke - power(2,4)" unless power(3,15) == 14348907
puts "passes all power tests"



def binary(n)
	return "0 1" if n==1
	previous_binary=binary(n-1)

	#insert 0 into first position of each two copies of the previous binary string
	#ex for binary(2), previous is "0 1", so  "0 1".dup.insert(0,"0") => "00 1"
	#then substitute a 0 and a space for every space "00 1".gsub(/\s/, "0") => "00 01"
	#now do this for 1s
	# "0 1".dup.insert(0,"1") => "10 1"
	# "10 1".gsub(/\s/, "1") => "10 11"

	#Note:
	#need .dup (duplicate) so that original string won't be modified by insert
	#there is no non-destructive version of insert
	first_half=previous_binary.dup.insert(0,"0").gsub(/\s/, " 0")
	second_half=previous_binary.dup.insert(0,"1").gsub(/\s/, " 1")
	return first_half+" "+ second_half
end
# def travel(x,y)
# end

# # Binary Tests
raise "binary broke - binary(1)" unless binary(1) == "0 1"
													   # " 0  1  0  1 "
													   # "0  0  1  1  "
raise "binary broke - binary(2)" unless binary(2) == "00 01 10 11"
													   # " 00  01  10  11  00  01  10  11 "
													   #  01234567890123456->16->32 
													   #  ((2^n)*n+1)/2 
													 # "000 001 010 011 100 101 110 111"
													   # " 000  001  010  011  100  101  110  111  000  001  010  011  100  101  110  111"
													   #  01234567890123456789012345678901234567890 ->40
													 # "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001 1010 1011 1100 1101 1110 1111"

raise "binary broke - binary(7)" unless binary(7) == "0000000 0000001 0000010 0000011 0000100 0000101 0000110 0000111 0001000 0001001 0001010 0001011 0001100 0001101 0001110 0001111 0010000 0010001 0010010 0010011 0010100 0010101 0010110 0010111 0011000 0011001 0011010 0011011 0011100 0011101 0011110 0011111 0100000 0100001 0100010 0100011 0100100 0100101 0100110 0100111 0101000 0101001 0101010 0101011 0101100 0101101 0101110 0101111 0110000 0110001 0110010 0110011 0110100 0110101 0110110 0110111 0111000 0111001 0111010 0111011 0111100 0111101 0111110 0111111 1000000 1000001 1000010 1000011 1000100 1000101 1000110 1000111 1001000 1001001 1001010 1001011 1001100 1001101 1001110 1001111 1010000 1010001 1010010 1010011 1010100 1010101 1010110 1010111 1011000 1011001 1011010 1011011 1011100 1011101 1011110 1011111 1100000 1100001 1100010 1100011 1100100 1100101 1100110 1100111 1101000 1101001 1101010 1101011 1101100 1101101 1101110 1101111 1110000 1110001 1110010 1110011 1110100 1110101 1110110 1110111 1111000 1111001 1111010 1111011 1111100 1111101 1111110 1111111"
#
# # Travel Tests
# raise "travel broke - travel(1,2)" unless travel(1,2) == "ENN NEN NNE "
# raise "travel broke - travel(2,2)" unless travel(2,2) == "EENN ENEN ENNE NEEN NENE NNEE "

puts "All test passed"
