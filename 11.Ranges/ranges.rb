#!/usr/bin/ruby

puts "\n--------- Ruby Ranges ----------\n"
puts "#{(1..5).to_a}"
puts "#{(-5..-1).to_a}" # include -1
puts "#{(-5...-1).to_a}" # exclulde -1
puts "#{('a'..'e').to_a}"
puts "#{('a'...'e').to_a}"

puts "\n--------- Range as sequence ----------\n"
range1 = (1...5).to_a
range2 = ('bar'..'bat').to_a
range3 = ('me'..'mi').to_a()
puts "#{range1}"    # [1, 2, 3, 4]
puts "#{range2}"    # ["bar", "bas", "bat"]
puts "#{range3}"    # ["me", "mf", "mg", "mh", "mi"]

puts "\n--------- Range as sequence-operations ----------\n"
range = 0..5

puts range.include?(3)  # true
puts range.include?(31)  # false

ans = range.min
puts "Minimum value is #{ans}"  #0
ans = range.max
puts "Maximum value is #{ans}"  #5

range.each do |digit|
    puts "In Loop #{digit}"     #[0,1,2,3,4,5]
end

range = 0..9
ans = range.reject{|i| i < 5 }
puts "Rejected values are #{ans}"   #[5, 6, 7, 8, 9]

puts "\n--------- Range as Conditions ----------\n"
budget = 50000

watch = case budget
    when 100..1000 then "Local"
    when 1000..10000 then "Titan"
    when 5000..30000 then "Fossil"
    when 30000..100000 then "Rolex"
    else "No stock"
end

puts watch

puts "\n--------- Range as Intervals ----------\n"
if (('a'..'z') === 'v')
    puts "v lies in the above range"
end

if (('50'..'90') === 99)
    puts "z lies in the above range"
end

puts "\n--------- Range as Intervals ----------\n"
puts (5..1).to_a    # no output
puts (1..5).to_a().reverse()    # print in reverse order




