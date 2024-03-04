#!/usr/bin/ruby

#! Remove Duplicates from a given array

a = [4, 5, 12, 77, 77, 2, 3, 23, 5, 6, 4, 4, 0, 15, 2]
puts "Input array: #{a}"


#! Method 1: Using uniq function
result = a.uniq()
puts "\nMethod 1: Using uniq function:-"
puts "#{result}"


#! Method 2.a: Using Set Class
require 'set'

set = a.to_set()
result = set.to_a()
puts "\nMethod 2.a: Using Set Class:-"
puts "#{result}"


#! Method 2.b: Using Set Class
set = Set.new

puts "\nMethod 2.b: Using Set Class:-"
a.each do |x|
    # set.add(x)
    # or
    set << x
end
result = set.to_a
puts "#{result}"


#! Method 3: Using Hash
hash = Hash.new
a.each do |x|
    unless hash.include?(x)
        hash.store(x, 1)
    else
        hash[x] = hash[x]+1
    end

    ## or
    
    # if hash.include?(x)
    #     hash[x] = hash[x]+1
    # else
    #     hash.store(x, 1)
    # end
end

puts "\nMethod 3: Using Hash:-"
result = hash.keys()
puts "#{result}"


#! Method 4: Using Frequency array
max = a[0]
for i in a do
    if i > max
        max = i
    end
end

freq = Array.new(max+1, 0)
result = []

for i in a do
    freq[i] = freq[i]+1
end

for i in 0..max do
    if (freq[i] != 0)
        result << i
    end
end
puts "\nMethod 4: Using Frequency array:-"
puts "#{result}"
