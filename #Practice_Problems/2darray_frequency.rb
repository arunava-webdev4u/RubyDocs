#!/usr/bin/ruby

#! Calculate frequency of 2D array
data = [
    [2020, 50],
    [2018, 90],
    [2020, 40],
    [2021, 100],
    [2020, 10],
    [2019, 70],
    [2017, 45],
    [2019, 95],
    [2018, 20],
    [2011, 10],
    [1980, 55],
    [1995, 120],
    [1980, 15]
]
# data = [
#     [2020, 50],
#     [2018, 90],
#     [2020, 40],
#     [2021, 100],
#     [2020, 10],
#     [2019, 70]
# ]
puts "Input array: #{data}"


#! Method 1: Using a Hash
hash = Hash.new

for i in data
    if !hash.include?i[0]
        hash.store(i[0], i[1])
    else
        hash[i[0]] = hash[i[0]] + i[1]
    end
end

arr = Array.new
for i in hash.keys()
    arr.push([i, hash[i]])
end

puts "\nMethod 1: Using a Hash:-"
puts "Hash format: #{hash}"
puts "2D Array format: #{arr}"


#! Method 2: Using an array
arr = Array.new
data.each do |x, y|
    if (arr[x])
        arr[x] = arr[x] + y
    else
        arr[x] = y
    end
end

result = []
for i in 0..arr.length
    if (arr[i]) 
        result.push([i, arr[i]])
    end
end
puts "\nMethod 2: Using an array:-"
puts "2D Array format: #{result}"
