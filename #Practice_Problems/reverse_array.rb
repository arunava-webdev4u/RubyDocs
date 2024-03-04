#!/usr/bin/ruby

#! Reverse a given array

a = [2, 7, 2, 0, 0, 1]
puts "Input array: #{a}"


#! Method 1: Using the reverse method
puts "\nMethod 1: Using the reverse method:-"
result = a.reverse()
puts "#{result}"


#! Method 2: Using another array
arr = Array.new(a.length())
x = a.length()-1
for i in a
    arr[x] = i;
    x = x-1;
end

puts "\nMethod 2: Using another array:-"
puts "#{arr}"


#! Method 3: Using Swap method
result = a.clone()
x = result.length-1

for i in 0...(result.length()/2)
    tmp = result[i]
    result[i] = result[x];
    result[x] = tmp;
    x = x-1
end

puts "\nMethod 3: Using Swap method:-"
puts "#{result}"
