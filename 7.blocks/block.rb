puts "\n-------- multi line block --------\n"
[10, -20, 30, -55].each do |n|
    puts n   
end

puts "\n-------- single line block --------\n"
[10, -20, 30, -55].each { |n| puts n }  

puts "\n-------- yeild statement without param --------\n"
puts "\n-------- exp 1 --------\n"
def test
    puts "You are in the method"
    yield
    puts "You are again back to the method"
    yield
end
test {puts "You are in the block"}

puts "\n-------- exp 1 --------\n"
def test2
    puts "You are in the method"
    yield
    puts "You are again back to the method"
    yield
end
test2 do
    puts "You are in the block l1"
    puts "You are in the block l2"
end

puts "\n-------- yeild statement with param --------\n"
puts "\n-------- exp 1 --------\n"
def prms
    puts "You are in the method prms"
    yield 5
    puts "You are in the method prms"
    yield 100
    puts "You are in the method prms"
end
prms {|i| puts "You are in the block #{i}"}
puts "\n-------- exp 2 --------\n"
def prms
    puts "You are in the method prms"
    yield 5
    puts "You are in the method prms"
    yield 10, 20
    puts "You are in the method prms"
end
prms {|i, j| puts "You are in the block #{i}, #{j}"}

puts "\n-------- BEGIN & END blocks --------\n"
BEGIN { 
   # BEGIN block code 
   puts "BEGIN code block"
} 
END { 
    # END block code 
    puts "END code block"
}
# MAIN block code 
puts "MAIN code block"


