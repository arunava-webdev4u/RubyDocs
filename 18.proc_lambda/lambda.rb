#!/usr/bin/ruby

puts "\n -------- lambda -------- \n"
my_lambda = lambda { puts "hello" }
my_lambda   # no output, not called
my_lambda.call  # called now
my_lambda.()
my_lambda[]
my_lambda.===

puts "\n -------- literal lambda operator -------- \n"
my_lambda = -> { puts "hello" }
my_lambda_args = -> (v) { puts "hello "+v }
my_lambda_args2 = -> (v, m, n) { puts "hello " + (v+n+m) }

my_lambda.call
my_lambda_args["dev"]
my_lambda_args2.("dev", "test", "lead")

puts "\n -------- lambda default args -------- \n"
my_lambda = lambda {|name="jerry"| puts "hello " +name}
my_lambda.call
my_lambda.call("newman")

puts "\n -------- multi line lambda -------- \n"
one_line = lambda { puts "hello" }
one_line.call

multi_line = lambda do
    puts "hello"
    puts "hello 2"
end
multi_line.call

puts "\n -------- pass lambda to a function -------- \n"
double_it = lambda { |num| num * 2 }
triple_it = lambda { |num| num * 3 }

def apply_lambda(lmbda, number)
    puts lmbda.call(number)
end

apply_lambda(double_it, 10)
apply_lambda(triple_it, 20)

puts "\n -------- array of lambda -------- \n"
double_it = lambda { |num| num * 2 }
triple_it = lambda { |num| num * 3 }
half_it  = lambda { |num| num / 2 }

value = 10
lambda_pipeline = [double_it, triple_it, half_it]

lambda_pipeline.each do |lmb|
    puts lmb.call(value)
end

puts "\n -------- proc vs lambda -------- \n"
p = Proc.new {|a, b| puts a**2+b**2 }
p.call 1, 2     # 5
# p.call 1    # error: undefined method
p.call 1, 2, 3  # 5

l = lambda {|a, b| puts a**2+b**2 }
l.call 1, 2 # 5
# l.call 1    # error: wrong number of arguments
# l.call 1, 2, 3 # error: wrong number of arguments






