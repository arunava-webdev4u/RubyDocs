# Ruby: Proc
More on [Proc](https://ruby-doc.org/core-2.6/Proc.html)

A Proc object is an encapsulation of a block of code, which can be stored in a local variable, passed to a method or another Proc, and can be called.

```ruby
square = Proc.new {|x| x**2 }

puts square.call(3)  #=> 9
# shorthands:
puts square.(3)      #=> 9
```
Proc objects are **closures**, meaning they **remember and can use the entire context in which they were created**.
```ruby
def gen_times(factor)
    Proc.new {|n| n*factor } # remembers the value of factor at the moment of creation
end

times_3 = gen_times(3)
times_5 = gen_times(5)

puts times_3.call(12)   #=> 36
puts times_5.call(5)    #=> 25
puts times_3.call(times_5.call(4))  #=> 60
```
There are several methods to create a Proc:
- Use the Proc class constructor: ``proc1 = Proc.new {|x| x**2 }``
- Use the Kernel#proc method as a shorthand of ::new: ``proc2 = proc {|x| x**2 }``



# Lambda
Lambdas are **expressions whose value is a function**. For this reason, they are also called anonymous functions. 

We can reference them using a variable in our code, just like a string, integer, or any other object.

They **behave the same way as a Proc**, except that a Lambda **validates the number of parameters**. 


With Ruby, the lambda keyword is used to create a lambda function. It requires a block and can define zero or more parameters. You call the resulting lambda function by using the call method.

Here’s a normal Ruby function:
```ruby
def my_function
   puts "hello"
end
my_function
```
**Output:** ``hello``

You can define a lambda function with the same output:
```ruby
my_lambda = lambda { puts "hello" }
my_lambda   # no output, not called
my_lambda.call  # called now
```
**Output:** ``hello``

More ways to call lambda function:
```ruby
my_lambda.call
my_lambda.()
my_lambda.[]
my_lambda.===
```
You can also create a lambda with the literal lambda operator, which looks like this and can have zero or more arguments: 
```ruby
my_lambda = -> { puts "hello" }
my_lambda_with_args = -> (v) { puts "hello "+v }
my_lambda_with_args = -> (v, m, n) { puts "hello " + (v+n+m) }
```

### lambda default args
You can also use **default arguments** with a Ruby lambda:
```ruby
my_lambda = lambda {|name="jerry"| puts "hello " +name}
my_lambda.call
my_lambda.call("newman")
```

### Multi line lambda
Finally, the block you are passing to a lambda can be either a **single line** block with **curly braces** or a **multi-line** block with **do and end**:

```ruby
one_line = lambda { puts "hello" }
one_line.call

multi_line = lambda do
    puts "hello"
    puts "hello 2"
end
multi_line.call
```

## What Purpose do Lambdas Serve?
The additional indirection that lambda functions provide give you flexibility when writing a Ruby program.

### First Class Functions
For instance, you can **pass a lambda to a function**. This concept is referred to as a **first-class** function. 
```ruby
double_it = lambda { |num| num * 2 }
triple_it = lambda { |num| num * 3 }

def apply_lambda(lmbda, number)
    puts lmbda.call(number)
end

apply_lambda(double_it, 10)
apply_lambda(triple_it, 20)
```
You can also create an array of lambdas to execute in a pipeline:
```ruby
double_it = lambda { |num| num * 2 }
triple_it = lambda { |num| num * 3 }
half_it  = lambda { |num| num / 2 }

value = 10
lambda_pipeline = [double_it, triple_it, half_it]

lambda_pipeline.each do |lmb|
    puts lmb.call(value)
end
```

### Callbacks
Callbacks are another related use case for which Lambdas are useful. Lambdas can be used to implement logic invoked at certain points in the application lifecycle, or a specific object’s lifecycle.

More [Lambda](https://blog.appsignal.com/2023/06/21/an-introduction-to-lambdas-in-ruby.html)

# Proc vs Lambda
One difference is in the way they handle arguments. Creating a proc using proc {} and Proc.new {} are equivalent. However, using **lambda {} gives you a proc** that c**hecks the number of arguments** passed to it. 

```ruby
p = Proc.new {|a, b| puts a**2+b**2 }
p.call 1, 2     # 5
# p.call 1    # error: undefined method
p.call 1, 2, 3  # 5

l = lambda {|a, b| puts a**2+b**2 }
l.call 1, 2 # 5
# l.call 1    # error: wrong number of arguments
# l.call 1, 2, 3 # error: wrong number of arguments
```

Another difference is using **return inside a lambda** returns the **value** of that lambda, but using **return in a proc** returns from the **enclosing block**.




