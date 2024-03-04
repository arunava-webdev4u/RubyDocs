#!/usr/bin/ruby

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }

puts "--------------------"
hsh.each do |key, value|
    print key, " is ", value, "\n"
end
puts "--------------------"
hsh.each do |key, value|
    puts key, " is ", value, "\n"
end
puts "--------------------"
hsh.each do |key, value|
    puts "#{key}, is, #{value}, \n"
end
puts "--------------------"
puts hsh
puts "--------------------"
puts "#{hsh}"