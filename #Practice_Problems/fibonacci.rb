#!/usr/bin/ruby

#! Fibonacci Series
print "Enter a number: "
inp = gets.to_i


#! Method 1: Using loop
def fibonacci(n)
    first = 0
    second = 1
    print "0 1 "
    for i in 1..n-2
        tmp = second
        second = first+second
        first = tmp
        print "#{second} "
    end
end

puts "\nMethod 1: Using loop:-"
case inp
    when 0
        puts "0"
    when 1
        puts "0 1"
    else
        fibonacci(inp)
end


#! Method 2: Using recursion
def fibo(n)
    return n if n <= 1
    
    fibo(n-1) + fibo(n-2)
end
puts "\n\nMethod 2: Using recursion:-"
case inp
    when 0
        puts "0"
    when 1
        puts "0 1"
    else
        (0...inp).each {|x| print "#{fibo(x)} "}
end