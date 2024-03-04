#!/usr/bin/ruby

i = 0
num = 5

puts "\n-------- while loop ----------\n"
while i < num do
    puts("while = #{i}")
    i += 1
end
x = 5
while x >= 0
    puts("while = #{x}")  
    x -=1   
end

puts "\n-------- while modifier ----------\n"
i = 0
begin
    puts("Inside the loop i = #{i}" )
    i += 1
end while i < 5

puts "\n-------- do while loop ----------\n"
ans = 0
loop do
    puts "Checking for a match"   
    if ans == 5
        break   
    end
    ans += 1
end


puts "\n-------- for loop ----------\n"
a = 10
for i in 1..a do   
    puts("for = #{i}") 
end

puts "\n-------- for loop using array ----------\n"
x = ["Blue", "Red", "Green", "Yellow", "White"]   
for i in x do   
    puts("for = #{i}")  
end

puts "\n-------- each, with array ----------\n"
x = ["Blue", "Red", "Green", "Yellow", "White"]  
x.each do |user|
    puts user
end

puts "\n-------- until loop ----------\n"
i = 1
until i == 10
    puts i * 10
    i += 1
end

puts "\n-------- until modifier ----------\n"
i = 0
begin
    puts "#{i}"
    i += 1
end until i > 5

# or

# puth "hello" until false    # infinite loop

puts "\n-------- break statement ----------\n"
for i in (1..5) do
    if (i > 2) then
        break
    end
    puts i
end

puts "\n-------- next statement ----------\n"
for i in (1..5) do
    if (i < 2) then
        next
    end
    puts i
end

puts "\n-------- redo statement ----------\n"
# for i in (1..5) do
#     if (i < 2) then
#         puts i
#         redo
#     end
# end
# infinite loop

puts "\n-------- retry statement ----------\n"
# for i in (0..5) do
#     retry if (i > 2)
# puts "Value of local variable is #{i}"
# end






