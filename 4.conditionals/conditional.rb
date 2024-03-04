#!/usr/bin/ruby

puts "\n-------- if statement ----------"
a = 19
if a >= 18   
    puts "You are eligible to vote."   
end

puts "\n-------- if else statement ----------"
a = 17
if a >= 18   
    puts "You are eligible to vote."   
else   
    puts "You are not eligible to vote."   
end

puts "\n-------- elsif statement ----------"
a = 77
if a < 50
    puts "Student is fail"   
elsif a >= 50 && a <= 60   
    puts "Student gets D grade"   
elsif a >= 70 && a <= 80   
    puts "Student gets B grade"   
elsif a >= 80 && a <= 90   
    puts "Student gets A grade"    
elsif a >= 90 && a <= 100   
    puts "Student gets A+ grade"    
end  

puts "\n-------- ternary operator ----------"
x = (a > 3 ? true : false);    
puts x

puts "\n-------- if modifier ----------"
$debug = 1
print "its working\n" if $debug

puts "\n-------- unless statement ----------"
x = 1 
unless x >= 2
    puts "x is less than 2"
else
    puts "x is greater than 2"
end

puts "\n-------- unless modifier ----------"
x = 1
puts "1 -- Value is set\n" if x
puts "2 -- Value is set\n" unless x
x = false
puts "3 -- Value is set\n" unless x

puts "\n-------- case when ----------"
$age =  5
case $age
when 0 .. 2
    puts "baby"
when 3 .. 6
    puts "little child"
when 7 .. 12
    puts "child"
when 13 .. 18
    puts "youth"
else
    puts "adult"
end