#!/usr/bin/ruby

#! Factorial
print "Enter a number: "
inp = gets.to_i


#! Method 1: Using loop
res = 1
for i in 2..inp
    res = res*i
end
puts "\nMethod 1: Using loop:-"
puts "Factorial of #{inp}: #{res}"


#! Method 2: Using Recursion
def fact(n)
    if (n == 1) then
        return 1
    end
    return fact(n-1) * n
end

res = fact(inp)
puts "\nMethod 2: Using Recursion:-"
puts "Factorial of #{inp}: #{res}"