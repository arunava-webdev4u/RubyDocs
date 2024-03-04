# Ruby: Strings

Ruby string object holds and manipulates an arbitary sequence of bytes, typically representing characters.

They are created using **String::new** or as **literals**.

Ruby string literals are enclosed within single and double quotes.

```ruby
puts 'Hello everyone'   
puts "Hello everyone"  
```
If you need to place an apostrophe within a single-quoted string literal, precede it with a backslash.
```ruby
puts 'Won\'t you read O\'Reilly\'s book?'
```
The backslash also works to escape another backslash, so that the second backslash is not itself interpreted as an escape character.

Get length of a string: ``puts "hello".length``


## Accessing string elements
Access Ruby string elements in different parts with the help of square **brackets []**.

Within square brackets write the **index** or string.
```ruby
msg = "This tutorial is from JavaTpoint."
puts msg["JavaTpoint"]
puts msg["is"]
puts msg["hello"]   # nil

puts msg[0] #'T'
puts msg[-3]    #'n' negative indx: starts from -1

# syntax: [start indx, length]
puts msg[0, 2]  #'Th'
puts msg[0, 5]  #'This '
puts msg[5, 5]  #'tutor'


puts msg[0..10] #'This tutori' 11 chars....because here 10 is index
puts "hello".length
puts msg[0, msg.length]
```

## Multiline string
Three ways of writing multiline strings:
```ruby
puts "
A
AB
ABC
ABCD"

puts %/
A
AB
ABC
ABCD/

puts <<STRING
A
AB
ABC
ABCD
STRING
```

## Variable Interpolation
```ruby
country = "India"
capital = "New Delhi"
puts "#{capital} is the capital of #{country}."
```

## Expression Substitution
```ruby
x, y, z = 12, 36, 72
puts "The value of x is #{ x }."
puts "The sum of x and y is #{ x + y }."
puts "The average was #{ (x + y + z)/3 }."
```

## Concatenating Strings
There are four ways to concatenate Ruby strings into single string:

- Using **plus sign** in between strings.
- Using a **single space** in between strings.
- Using **<< sign** in between strings.
- Using **concat method** in between strings.
```ruby
string = "This is" + " Ruby Tutorial" + " Good luck."
puts string
  
string = "This is" " Ruby Tutorial" " Good luck."
puts string
  
string = "This is" << " Ruby Tutorial" << " Good luck."
puts string
  
string = "This is".concat(" Ruby Tutorial").concat(" Good luck.")
puts string
```

## Freezing Strings
In most programming languages strings are immutable.
In Ruby, ***by default strings are not immutable***. To make them immutable, **freeze method** can be used.
```ruby
str = "Original string"
puts str
str << " is modified "
puts str
str << "is again modified"
puts str

str.freeze

#And here modification will be failed after using freeze method
# str << "Trying to modify string"    # ERROR, can't
```

## Comparing Strings
Ruby strings can be compared with three operators:

- With **== operator** : Returns true or false
- With **eql? Operator** : Returns true or false
- With **casecmp method** : Returns 0 if matched or 1 if not matched
```ruby
puts "abc" == "abc"     #true
puts "as ab" == "ab ab" #false
puts "Java" == "java"   #false

puts "ttt".eql? "tft"   #false
puts "12".eql? "12"     #true
puts "Java".eql? "java" #false

puts "Java".casecmp? "Java"  #true
puts "Java".casecmp? "java"  #true  #doesn't compare the case
puts "JaVa".casecmp? "jAVa"  #true  #doesn't compare the case
puts "Java".casecmp? "ja"    #false
```

## General Delimited Strings
With general delimited strings, you can create strings inside a pair of matching though arbitrary delimiter characters, e.g., !, (, {, <, etc., preceded by a percent character (%). Q, q, and x have special meanings. General delimited strings can be −

    %{Ruby is fun.}  equivalent to "Ruby is fun."
    %Q{ Ruby is fun. } equivalent to " Ruby is fun. "
    %q[Ruby is fun.]  equivalent to a single-quoted string
    %x!ls! equivalent to back tick command output `ls`

## Character Encoding

The **default character set** for Ruby is **ASCII**, whose characters may be represented by single bytes.

If you use UTF-8, or another modern character set, characters may be represented in one to four bytes.

You can change your character set using **$KCODE** at the beginning of your program, like this ``$KCODE = 'u'``

Following are the possible values for $KCODE
| SR.No. | Code & Description |
| ---- | ---- |
| 1 | a, ASCII (same as none). This is the default. |
| 2	| e, EUC. |
| 3	| n, None (same as ASCII). |
| 4 | u, UTF-8. |

## String Built-in Methods
Link to many more methods: [Visit](https://www.tutorialspoint.com/ruby/ruby_strings.htm)

[More info](https://www.hackerrank.com/challenges/ruby-strings-encoding/problem?isFullScreen=true)
```ruby
myStr = String.new("THIS IS TEST")

foo = myStr.downcase
puts foo

bar = foo.upcase
puts bar
```