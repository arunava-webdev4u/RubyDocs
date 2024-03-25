# Enum

## What is Enum?
In programming, an enum, short for enumeration, is a data type that represents a collection of named constants. Enums are used to define a collection of values with distinct, specified meanings. They are commonly used to make code more clear and understandable.

In Ruby, an enum does not exist as a built-in language construct like in some other programming languages. However, we can achieve similar functionality using various approaches.

To simulate an enum Ruby, one typical way is to utilize a module and constants. Here's an example:

```ruby
module Day
    SUNDAY = 0
    MONDAY = 1
    TUESDAY = 2
    WEDNESDAY = 3
    THURSDAY = 4
    FRIDAY = 5
    SATURDAY = 6
end

current_day = Day::SUNDAY

if current_day == 0 || current_day == 6
    puts "Weekend"
else
    puts "Weekday"
end

# Output => Weekend
```

Rails 7 has an implementation of enums.