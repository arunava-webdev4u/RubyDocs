puts "\n-------- Creating Empty hash #1 --------\n"
months = Hash.new
puts months[0]  # nil
puts months[12] # nil

puts "\n-------- hash Default value --------\n"
# months = Hash.new("month") or
months = Hash.new "month"
puts months[0]  # month
puts months[12] # month

puts "\n-------- Creating hash #2 --------\n"
H = Hash["a" => 100, "b" => 200, 3 => 'hello', 22 => "ruby", 2 => 3]
puts "#{H['a']}"
puts "#{H['b']}"
puts "#{H[3]}"
puts "#{H[22]}"
puts "#{H[2]}"
# or
h = { "a" => 100, "b" => 200, 3 => 'hello', 22 => "ruby", 2 => 3 }
puts "#{h['a']}"
puts "#{h['b']}"
puts "#{h[3]}"
puts "#{h[22]}"
puts "#{h[2]}"

puts "\n-------- Modifying Hash --------\n"
color = {
    "Rose" => "red",
    "Lily" => "purple",
    "Marigold" => "yellow",
    "Jasmine" => "white"
}
color['Tulip'] = "pink"     # Gets added
color.each do |key, value|
    puts "#{key} color is #{value}"
end
puts "\n"
color["Rose"] = "dark red"  # value gets updated
color.each do |key, value|
    puts "#{key} color is #{value}"
end
puts "\n"
color["Rose"] = nil  # value gets updated to 'nil'
color.each do |key, value|
    puts "#{key} color is #{value}"
end


puts "\n-------- Creating Hash #3 --------\n"
months = Hash.new( "month" )
months = {"1" => "January", "2" => "February"}

puts months.keys






