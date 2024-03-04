#!/usr/bin/ruby

puts "\n-------- each iterator --------\n"
(1...5).each do |i|
    puts i
end

arr = [3,4,5,6]
arr.each do |i|
    puts i
end

puts "\n-------- times iterator --------\n"
5.times do |n|
    puts n
end

10.times do |n|
    puts n
end

-5.times do |n|     # no output
    puts n
end

puts "\n-------- collect iterator --------\n"
a = [1,2,3,4,5]
b = Array.new()
b = a.collect
puts b.to_a

puts "\n-------- upto & downto iterator --------\n"
1.upto(10) do |n|
    puts n
end

puts "\n-------- step iterator --------\n"
(10..50).step(5) do |n|
    puts n
end

puts "\n-------- Each_Line iterator --------\n"
"All\nthe\nwords are\nprinted\nin a\nnew\line.".each_line do |x|
    puts x
end