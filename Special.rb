# round a number to x decimal points
puts "-------- round a float number --------\n"
n = 3.143789387923
puts n.round(2)
puts n.round(5)

puts "-------- Convert string to number --------\n"
n = "5"
puts n.to_i
puts n.to_f
n = "3.143789387923"
puts n.to_i
puts n.to_f

puts "-------- Split a string --------\n"
s1 = "Welcome to ruby world"
arr = s1.split()
puts "#{arr}"

s2 = "Ruby-is-fun"
arr = s2.split('-')
puts "#{arr}"

s3 = "rails.is.great"
arr = s3.split('.', 2)  # limit to only 1 split
puts "#{arr}"

s4 = "ruby_on_rails"
arr = s4.split('_')
puts "#{arr}"

puts "-------- Iterate over a string --------\n"
str = "¥HEllo there, developers\nwelcome !!"
# str.each_byte {|x| puts x}
# str.each_codepoint {|x| puts x}
# str.each_char {|x| puts x}
# str.each_line {|x| puts x}

str = "¥HEllo"
str.each_codepoint {
    |x|
    puts x.size
}