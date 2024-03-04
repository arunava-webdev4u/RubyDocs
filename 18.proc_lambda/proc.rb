#!/usr/bin/ruby

puts "\n -------- Procs -------- \n"
square = Proc.new {|x| x**2 }

puts square.call(3)  #=> 9
# shorthands:
puts square.(3)      #=> 9
puts square[3]       #=> 9

puts "\n -------- Procs Remember -------- \n"
def gen_times(factor)
    Proc.new {|n| n*factor } # remembers the value of factor at the moment of creation
end

times_3 = gen_times(3)
times_5 = gen_times(5)

puts times_3.call(12)   #=> 36
puts times_5.call(5)    #=> 25
puts times_3.call(times_5.call(4))  #=> 60