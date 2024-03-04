#!/usr/bin/ruby

puts 'Hello everyone'
puts "Hello everyone"

puts 'Won\'t you read O\'Reilly\'s book?'

puts "\n-------- Accessing string elements ---------\n"
msg = "This tutorial is from JavaTpoint."
puts msg["JavaTpoint"]
puts msg["is"]
puts msg["hello"]   # nil

puts msg[0] #'T'
puts msg[-3]    #'n' negative indx: starts from -1

# syntax: [start indx, length]
puts msg[0, 2]  #'Th'
puts msg[0, 5]  #'This '
puts msg[5, 5]  #'tutor'


puts msg[0..10] #'This tutori' 11 chars....because here 10 is index
puts "hello".length
puts msg[0, msg.length]

puts "\n-------- Multi line strings ---------\n"
puts "
A
AB
ABC
ABCD"

puts %/
A
AB
ABC
ABCD/

puts <<STRING
A
AB
ABC
ABCD
STRING

puts "\n-------- Variable Interpolation ---------\n"
country = "India"
capital = "New Delhi"
puts "#{capital} is the capital of #{country}."

puts "\n-------- Expression Substitution ---------\n"
x, y, z = 12, 36, 72
puts "The value of x is #{ x }."
puts "The sum of x and y is #{ x + y }."
puts "The average was #{ (x + y + z)/3 }."

puts "\n-------- Concatenating Strings ---------\n"
string = "This is" + " Ruby Tutorial" + " Good luck."   
puts string   
  
string = "This is" " Ruby Tutorial" " Good luck."   
puts string   
  
string = "This is" << " Ruby Tutorial" << " Good luck."   
puts string   
  
string = "This is".concat(" Ruby Tutorial").concat(" Good luck.")   
puts string  

puts "\n-------- Freezing Strings ---------\n"
str = "Original string"
puts str
str << " is modified "
puts str
str << "is again modified"
puts str

str.freeze

#And here modification will be failed after using freeze method
# str << "Trying to modify string"    # ERROR, can't

puts "\n-------- Comparing Strings ---------\n"
puts "abc" == "abc"     #true
puts "as ab" == "ab ab" #false
puts "Java" == "java"   #false

puts "ttt".eql? "tft"   #false
puts "12".eql? "12"     #true
puts "Java".eql? "java" #false

puts "Java".casecmp? "Java"  #true
puts "Java".casecmp? "java"  #true  #doesn't compare the case
puts "JaVa".casecmp? "jAVa"  #true  #doesn't compare the case
puts "Java".casecmp? "ja"    #false

puts "\n-------- String Built in methods ---------\n"
myStr = String.new("THIS IS TEST")

foo = myStr.downcase()
puts foo

bar = foo.upcase()
puts bar






