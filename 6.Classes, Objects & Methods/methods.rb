puts "\n-------- Method with Parameter --------\n"
def welcome (name)
    puts "Welcome #{name}!!"
end
welcome('Arunava Das')
welcome('Anirban')

def sum (a, b, c)
    sum = a + b + c
    puts "Sum: #{sum}"
end
# sum(2,3)    # error: wrong no. of args.
sum(1,2,3)      #6

puts "\n-------- Default Parameters --------\n"
def defaultParams (var1 = 'arg1', var2 = 'arg2')
    puts "val1: #{var1}"
    puts "val2: #{var2}"
end
defaultParams()     # arg1, arg2
defaultParams("hello")  #
defaultParams(6, "hello")

puts "\n-------- Return Values --------\n"
def test1
    i = 99
    return i
end
def test2
    i = 100
    j = 200
    k = 300
    return i, j, k
end
var = test1
puts "#{var}"   # 99
var = test2
puts "#{var}"   # [100, 200, 300]

puts "\n-------- Variable no. of params --------\n"
def sample (*test)
    puts "The number of parameters is #{test.length}"
    for i in 0...test.length
        puts "The parameters are #{test[i]}"
    end
end
sample()
# The number of parameters is 0

sample "one"
# The number of parameters is 1
# The parameters are one

sample "Zara", "6", "F"
# The number of parameters is 3
# The parameters are Zara
# The parameters are 6
# The parameters are F

sample("Mac", "36", "M", "MCA")
# The number of parameters is 4
# The parameters are Mac
# The parameters are 36
# The parameters are M
# The parameters are MCA



