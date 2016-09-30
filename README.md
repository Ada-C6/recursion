# Recursion Problems

## Definitions
- Recursion
- Recursive Case
- Base Case
- Activation Chain/Stack
- Activation Record/Call
- Infinite Recursion/Stack Overflow/Stack too deep
- Tail Recursion

## Tracing through a recursive method

**You should trace through these recursive methods given the calls below. The ones we did in class have the answers in bold immediately following the question.**

### Trace #1
```
def mystery1(n)
  if n == 1
    return n
  else
    return n + mystery1(n-1)
  end
end
```

- What is mystery1(5)? **15  
mystery1(5)  
5 + mystery1(4)  
4 + mystery1(3)  
3 + mystery1(2)  
2 + mystery1(1)  
1**  

- What is mystery1(10)? **55  
mystery(10)  
10 + mystery1(9)  
9 + mystery1(8)  
8 + mystery1(7)  
7 + mystery1(6)  
6 + mystery1(5)  
5 + mystery1(4)  
4 + mystery1(3)  
3 + mystery1(2)  
2 + mystery1(1)  
1**  

- What is mystery1(0)? **original guess was error - got stack level too deep (stackoverflow)**  

### Trace #2
```
def mystery2(n)
  if n < 10
    return n
  else
    return (n%10) + mystery2(n/10)
  end
end
```

- What is mystery2(123)? **3 + 2 + 1 = 6  
mystery(123)  
3 + mystery(12)  
mystery(12)  
2 + mystery(1)  
mystery(1)  
1  
  ([Panopto](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=202b1920-9501-4fd3-ae41-7b35a50166ff) at 45:00)**  

- What is mystery2(9005)? **5 + 0 + 0 + 9 = 14  
5 + mystery(900)  
mystery(900)  
0 + mystery(90)  
mystery(90)  
0 + mystery(9)  
mystery(9)  
9  
  ([Panopto](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=202b1920-9501-4fd3-ae41-7b35a50166ff) at 45:00)**  

- What is mystery2(-123)? **-123**  

- _Added Fun: How could we make `mystery2(-123)` work the way we might expect it to work instead of the way it does?_
**To add them all up as negatives (aka for the answer to be -6) just throw .abs on n in the 'if' line.**

### Trace #3
```
def mystery3(n)
  if n == 0
    return 100
  elsif n == -1
    return 200
  end
  if n%2 == 0
    return mystery3(n/2)
  else
    return mystery3(n-1)
  end
end
```

- What is mystery3(1)? **100  
mystery3(1)  
mystery3(0)  
result = 100**  

- What is mystery3(13)? **100  
mystery2(13)  
mystery2(12)  
mystery2(6)  
mystery2(3)  
mystery2(2)  
mystery2(1)  
mystery2(0)  
n == 0 => result = 100  
 ([Panopto](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=202b1920-9501-4fd3-ae41-7b35a50166ff) at 1:09:00)**  

- What is mystery3(-6)? **200  
mystery(-6)  
mystery(-3)  
mystery(-4)  
mystery(-2)  
mystery(-1)  
n == -1 => result = 200  
 ([Panopto](https://adaacademy.hosted.panopto.com/Panopto/Pages/Viewer.aspx?id=202b1920-9501-4fd3-ae41-7b35a50166ff) at 1:09:00)**  

### Trace #4
```
def mystery4(b,e)
  if e == 0
    return 1
  else
    return b * mystery4(b,e-1)
  end
end
```

- What is mystery4(10,2)? **100  
mystery4(10,2)  
10 * mystery4(10,1)  
10 * mystery4(10,0)  
1**  

- What is mystery4(4,3)? **64  
mystery4(4,3)  
4 * mystery4(4,2)  
4 * mystery4(4,1)  
4 * mystery4(4,0)  
1**  

- What is mystery4(5,0)? **1  
mystery4(5,0)  
1**  

### Trace #5
```
def mystery5(s)
  if s.length == 0
    return ""
  else
    return "*" + mystery5(s[1..-1])
  end
end
```

- What is mystery5("hi")? __"**"  
mystery5("hi")  
"*" + mystery5("i")  
"*" + mystery5("")  
""__  

- What is mystery5("")? **""**  

- What is mystery5("Hi, there!")? __"**********"  
mystery5("Hi, there!")  
"*" + mystery5("i, there!")  
"*" + mystery5(", there!")  
"*" + mystery5(" there!")  
"*" + mystery5("there!")  
"*" + mystery5("here!")  
"*" + mystery5("ere!")  
"*" + mystery5("re!")  
"*" + mystery5("e!")  
"*" + mystery5("!")  
"*" + mystery5("")  
""__  

- _Added Fun: How could we make only alphabetic characters to be changed to stars?_
```
def mystery5(s)
  if s.length == 0
    return ""
  else
    if s[0] =~ /[a-zA-Z]/
      return "*" + mystery5(s[1..-1])
    else
      return s[0] + mystery5(s[1..-1])
    end
  end
end
```

## Writing a recursive method

**You should attempt at least 1 of the following problems. We did #1 together in class, so you will find that solution in the recursion.rb file. You can use the tracing problems above to help give you an idea of what the methods may look like at the end, but remember to look for patterns between multiple examples to help you generalize before writing the code.**

### Write #1
`factorial(n)`
Write a method `factorial` that accepts an integer parameter n and that uses recursion to compute and return the value of n factorial (also known as n!).

- e.g. fact(4) = 4 * 3 * 2 * 1 = 24

```
def fact(n)  
  if n == 1 || n == 0  
    return 1  
  else  
    return n * fact(n-1)  
  end  
end
```

### Write #2
`reverse(s)`
Write a method `reverse` that accepts a string as a parameter
and then returns the reverse of the string.

- e.g. reverse("hello") = "olleh"

```
def reverse(str)  
    if str.length == 0  
      return ""  
    else  
      return str[-1] + reverse(str[0..-2])  
    end  
  end
```

### Write #3
`bunny(n)`
Write a method `bunny` that accepts an integer parameter n. N represents a
number of bunnies and each bunny has two big floppy ears. We want to compute the total number of ears across all the bunnies recursively (without loops or multiplication).

- e.g. bunny(0) = 0
- e.g. bunny(1) = 2
- e.g. bunny(10) = 20

```
def bunny(n)
  if n == 0
    return 0
  else
    2 + bunny(n-1)
  end
end
```

### Write #4
`nested(s)`
Write a method `nested` that accepts a string of only parenthesis
and then returns if those parenthesis are properly nested. You may
assume that no non-paren characters will be passed to this method.

- e.g. nested("((()))") = true
- e.g. nested("())") = false

```
def nested(str)
  if str.length == 0
    return true
  else
    num1 = 0

    if str[0] == ")" || str[-1] == ")"
      num1 += 1
    end

    if str[0] == "(" || str[-1] == "("
      num1 -= 1
    end

    if num1 != 0
      boo = false
    else
      boo = true
    end

    boo && nested(str[1..-2])
  end

end
```

**nested("(()))")  
true && nested("())")  
true && nested(")")  
false && nested("")  
true  

[working backwards]  
true && false => false  
true && false => false  
true && false => false  
result: false**  

## More Added Fun (optional)

### fib(n)
Write a recursive method `fib` that accepts an integer n as a parameter and returns the nth [fibonacci number](https://en.wikipedia.org/wiki/Fibonacci#Fibonacci_sequence).

- e.g. fib(4) = (1 1 2) 3 = 3

```
def fib(n)

end
```


### pal(s)
Write a recursive method `pal` that accepts a string s as a parameter and returns a boolean value indicating if that string is a [palindrome](https://en.wikipedia.org/wiki/Palindrome) or not.

- e.g. pal("racecar") = true
- e.g. pal("smile") = false

```
def pal(s)
  if s == nil || s.length == 1
    return true
  else
    boo = nil

    if s[0] == s[-1]
      boo = true
    else
      boo = false
    end

    boo && pal(s[1..-2])
  end
end
```
