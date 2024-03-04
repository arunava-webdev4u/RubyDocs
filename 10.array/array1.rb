#!/usr/bin/ruby

puts "\n-------- Array: literal construct --------\n"
usr = [4, 4.0, "Jose", 4/2, 'yes', 4+5]
puts "#{usr}"
usr = Array.[](1, '4', 5.25, "hello", 3*2, 10-6)
puts "#{usr}"

puts "\n-------- Array: new method --------\n"
name1 = Array.new

name2 = Array.new(20)
puts name2.size  # 20
puts name2.length # 20

puts "\n-------- Assigning value --------\n"
names = Array.new(4, "mac")
puts "#{names}"

puts "\n-------- Assigning evaluated value --------\n"
nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"

puts "\n-------- Array method --------\n"
digits = Array(0..10)
puts "#{digits}"
puts digits.size

digits = Array(0...10)
puts "#{digits}"
puts digits.length

digits = Array('a'..'z')
puts "#{digits}"

digits = Array("a"..."z")
puts "#{digits}"

puts "\n-------- Accessing array elements --------\n"
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
puts "#{days}"
puts "#{days[0]}"    # mon
puts " - #{days[10]}"   #nil
puts "#{days[-2]}"   #sat
puts "#{days[2, 3]}" # "Wed", "Thu"
puts "#{days[1..7]}"    # tue -> sun

puts "\n-------- Accessing array elements 2 --------\n"
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days.at(0) # mon
puts days.at(-1)# sun
puts days.at(5) # sat

puts "\n\n\n-------- Common Array methods --------\n"

puts "\n-------- Fetch method --------\n"
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
# puts days.fetch(10)   #Throws error
puts days.fetch(10, "oops")

puts "\n-------- First & Last Method --------\n"
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days.first # mon
puts days.last()# sun

puts "\n-------- Take Method --------\n"
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts days.take(1)   # mon
puts days.take(3)   # mon, tue, wed

puts "\n-------- Drop Method --------\n"
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts "#{days.drop(5)}"  # "Sat", "Sun"
puts "#{days.drop(2)}"  # ""Wed", Thu", "Fri", "Sat", "Sun"    

puts "\n\n\n-------- Adding elements to Array --------\n"
puts "\n-------- Push or << Method --------\n"
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]   
puts "#{days.push("Today")}"
puts "#{days << ("Tomorrow")}"

puts "\n-------- Unshift --------\n"
days = ["Fri", "Sat", "Sun"]
days.unshift("Today")
puts "#{days}"

puts "\n-------- Insert --------\n"
days = ["Fri", "Sat", "Sun"]
days.insert(2, "Thursday")
puts "#{days}"

puts "\n\n\n-------- Adding elements to Array --------\n"
puts "\n-------- Pop --------\n"
days = ["Fri", "Sat", "Sun"]
x = days.pop
puts x
puts "#{days}"

puts "\n-------- Shift --------\n"
days = ["Fri", "Sat", "Sun"]
x = puts days.shift
puts x
puts "#{days}"

puts "\n-------- Delete --------\n"
days = ["Fri", "Sat", "Sun"]
x = days.delete("Sat")
puts x
puts "#{days}"

days.delete(0)  # index not working
puts "#{days}"

puts "\n-------- Uniq --------\n"
days = ["Fri", "Sat", "Sun", "Sat"]
puts days.uniq

puts "\n-------- collect --------\n"
first_arr = [3, 4, 5]
second_arr = first_arr.collect { |num| num * 5 }

puts second_arr # [15, 20, 25]