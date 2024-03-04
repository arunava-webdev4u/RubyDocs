# Ruby: Conditionals

There are various types of if statement in Ruby.

- if statement
- if-else statement
- if-else-if (elsif) statement
- ternay (shortened if statement) statement

## if statement
```ruby
a = 12
if a >= 18   
    puts "You are eligible to vote."   
end
```

## if else statement
```ruby
a = 17
if a >= 18   
    puts "You are eligible to vote."   
else   
    puts "You are not eligible to vote."   
end
```

## elsif statement
```ruby
a = 77
if a < 50
    puts "Student is fail"   
elsif a >= 50 && a <= 60   
    puts "Student gets D grade"   
elsif a >= 70 && a <= 80   
    puts "Student gets B grade"   
elsif a >= 80 && a <= 90   
    puts "Student gets A grade"    
elsif a >= 90 && a <= 100   
    puts "Student gets A+ grade"    
end  
```

## ternary operator
```ruby
x = (a > 3 ? true : false);    
puts x
```

## if modifier
```
code if condition
```
Executes code if the conditional is true.

```ruby
$debug = 1
print "its working\n" if $debug
```
**Output**

    its working

## unless statement
Executes code if conditional is false. If the conditional is true, code specified in the else clause is executed.
```ruby
x = 1 
unless x >= 2
    puts "x is less than 2"
else
    puts "x is greater than 2"
end
```
**Output**

    x is less than 2

## unless modifier
Executes code if conditional is false.

```ruby
x = 1
puts "1 -- Value is set\n" if x
puts "2 -- Value is set\n" unless x
x = false
puts "3 -- Value is set\n" unless x
```
**Output**

    1 -- Value is set
    3 -- Value is set


## case, when statement
```ruby
$age =  5
case $age
when 0 .. 2
    puts "baby"
when 3 .. 6
    puts "little child"
when 7 .. 12
    puts "child"
when 13 .. 18
    puts "youth"
else
    puts "adult"
end
```
**Output**

    little child

