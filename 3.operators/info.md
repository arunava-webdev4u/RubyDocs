# Ruby: Operators

## Types of operators:
- Unary operator
- Airthmetic operator
- Bitwise operator
- Logical operator
- Ternary operator
- Assignment operator
- Comparison operator
- Range operator
  
## Unary operator
Unary operators expect a single operand to run on.
| Operator | Description |
| --------- | --------- |
| ! | Boolean NOT |
| ~ | Bitwise Complement |
| + | Unary Plus |

```ruby
puts(~5)    #-6
puts(~-5)   #4
puts(!true) #false
puts(!false)#true
```

## Airthmetic operator
Airthmetic operators take numerical values as operands and return them in a single value.
| Operator | Description |
| --------- | --------- |
| + | Addition |
| - | Substraction |
| * | Multiplication |
| / | Division |
| % | Modulus |
| ** | Exponent |
```ruby
puts(2+5)   #-7
puts(7-3)   #4
puts(3*6)   #18
puts(64/16) #4
puts(21%5)  #1
puts(2**5)  #32
```

## Bitwise Operator
Bitwise operators work on bits operands.
| Operator | Description |
| --------- | --------- |
| & | AND |
| \| | OR |
| << | Left Shift |
| >> | Right Shift |
| ^ | XOR |
| ~ | Bitwise Complement |
```ruby
puts(2&5)   #0
puts(2|5)   #7
puts(5<<1)  #10
puts(10>>1) #5
puts(5^3)   #6
puts(~3)    #-4
```

## Logical Operator
Logical operators work on bits operands.
| Operator | Description |
| --------- | --------- |
| && | AND |
| \|\| | OR |
```ruby
puts((5>2) && (20>12))  #true
puts((5>2) && (20<12))  #false
puts((5<2) && (20<12))  #false

puts((5>2) || (20>12))  #true
puts((5>2) || (20<12))  #true
puts((5<2) || (20<12))  #false

puts(5 && 1)    #1
puts(5 && -3)   #-3
puts(5 && 0)    #0
puts(0 && 4)    #0, different than other languages
puts(5 && "hello")  #'hello'
puts(5 && "")   #""
```

## Ternary Operator
Ternary operators first check whether given conditions are true or false, then execute the condition.
| Operator | Description |
| --------- | --------- |
| ?: | Conditional Expression |
```ruby
puts(2<5 ? 5:2) #5
puts(5<2 ? 5:2) #2
```

## Assignment Operator
| Operator | Description |
| --------- | --------- |
| = | Normal Assignment |
| += | Add Assignment |
| -= | Substract Assignment |
| *= | Multiply Assignment |
| /= | Division Assignment |
| %= | Modulus Assignment |
| **= | Exponential Assignment |
```ruby
x = 5
puts (x)    #5
x+=1
puts (x)    #6
x-=2
puts (x)    #4
x*=2
puts (x)    #8
x/=4
puts (x)    #2
x=21
x%=5
puts (x)    #1
x=2
x**=5
puts (x)    #32
```

## Comparison Operator
| Operator | Description |
| --------- | --------- |
| == | Equal |
| != | Not Equal |
| > | Greater Than |
| < | Less Than |
| >= | Greater Than Equal |
| <= | Less Than Equal |
| <=> | Combined Comparison |
| === | Test equality within a when clause |
| .eql? | Equality & Type |
| equal? | Check Object ID |
    NOTE: <=> Returns 0 if first operand equals second, 1 if first operand is greater than the second and -1 if first operand is less than the second.
    NOTE: .eql? Returns True if the receiver and argument have both the same type and equal values.
    NOTE: equal? True if the receiver and argument have the same object id.
```ruby
puts(2 == 5)        #false
puts(2 == 2.0)      #true
puts(2 == "2")      #false
puts (2.eql?(2.0))  #false

puts(2 != 5)    #true
puts(2 > 5)     #false
puts(2 < 5)     #true
puts(2 >= 2)    #true
puts(2 <= 3)    #true
puts(2 <=> 3)   #-1

puts((1..10) === 5) #true
```

## Range Operator
| Operator | Description |
| --------- | --------- |
| .. | Range is inclusive of the last item |
| ... | Range is exclusive of the last item |

## defined? Operators
    defined? is a special operator that takes the form of a method call to determine whether or not the passed expression is defined. It returns a description string of the expression, or nil if the expression isn't defined.

    There are various usage of defined? Operator

**Usage 1**
```ruby
defined? variable # True if variable is initialized
```
**For Example**
```ruby
foo = 42
defined? foo    # => "local-variable"
defined? $_     # => "global-variable"
defined? bar    # => nil (undefined)
```
**Usage 2**
```ruby
defined? method_call # True if a method is defined
```
**For Example**
```ruby
defined? puts        # => "method"
defined? puts(bar)   # => nil (bar is not defined here)
defined? unpack      # => nil (not defined here)
```
**Usage 3**
```ruby
# True if a method exists that can be called with super user
defined? super
```
**For Example**
```ruby
defined? super     # => "super" (if it can be called)
defined? super     # => nil (if it cannot be)
```
**Usage 4**
```ruby
defined? yield   # True if a code block has been passed
```
**For Example**
```ruby
defined? yield    # => "yield" (if there is a block passed)
defined? yield    # => nil (if there is no block)
```

## Dot "." and Double Colon "::" Operators
    You call a module method by preceding its name with the module's name and a period, and you reference a constant using the module name and two colons.

    The :: is a unary operator that allows: constants, instance methods and class methods defined within a class or module, to be accessed from anywhere outside the class or module.
**Remember in Ruby, classes and methods may be considered constants too.**
```ruby
MR_COUNT = 0         # constant defined on main Object class
module Foo
   MR_COUNT = 0
   ::MR_COUNT = 1    # set global count to 1
   MR_COUNT = 2      # set local count to 2
end
puts MR_COUNT        # this is the global constant
puts Foo::MR_COUNT   # this is the local "Foo" constant
```

# Ruby Operators Precedence
The following table lists all operators from highest precedence to lowest.

| Method | Operator | Description |
| -------- | -------- | -------- |
| Yes |	:: | Constant resolution operator |
| Yes |	[ ] [ ]= | Element reference, element set |
| Yes |	** | Exponentiation (raise to the power) |
| Yes |	! ~ + - | Not, complement, unary plus and minus (method names for the last two are +@ and -@) |
| Yes |	* / % | Multiply, divide, and modulo |
| Yes |	+ - | Addition and subtraction |
| Yes |	>> << | Right and left bitwise shift |
| Yes |	& | Bitwise 'AND' |
| Yes |	^ \| | Bitwise exclusive 'OR' and regular 'OR' |
| Yes |	<= < > >= | Comparison operators |
| Yes |	<=> == === != =~ !~ | Equality and pattern match operators (!= and !~ may not be defined as methods) |
| | && | Logical 'AND' |
| | \|\| | Logical 'OR' |
| | .. ... | Range (inclusive and exclusive) |
| | ? : | Ternary if-then-else |
| | = %= { /= -= += |= &= >>= <<= *= &&= ||= **= | Assignment |
| | defined? | Check if specified symbol defined |
| | not | Logical negation |
| | or and | Logical composition |


**NOTE − Operators with a Yes in the method column are actually methods, and as such may be overridden.**