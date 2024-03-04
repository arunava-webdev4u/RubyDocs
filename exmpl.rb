begin 
    puts 'Enter a number:'
    num=gets.chomp.to_i 
    result=10/num 
rescue ZeroDivisionError=>e 
    puts "Error:#{e.message}"
    retry
end
puts "Result: #{result}"

## also learn about proc and lambda