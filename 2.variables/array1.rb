#!/usr/bin/ruby

ary = [  "fred", 10, 3.14, "This is a string", "last element", ]

puts "---------------"
ary.each do |i|
   puts i
end
puts "---------------"
ary.each do |i|
   puts "#{i}"
end

puts "---------------"
puts ary
puts "---------------"
puts "#{ary}"