# Ruby: Introduction

## What is Ruby?
**Ruby is a dynamic, open source, object oriented and reflective programming language. It is fully object oriented programming language.**

Everything is an object in Ruby. Each and every code has their properties and actions. Here properties refer to variables and actions refer to methods.

Ruby variables are loosely typed, which means any variable can hold any type of object. 

Ruby is considered similar to Perl and Smalltalk programming languages.

Ruby is designed and developed by **Yukihiro "Martz" Matsumoto** in mid 1990s in Japan.

In 2005, they released their first Ruby framework "Ruby on Rails". The framework release was a big success and the Ruby community increased incredibly.

## Check Ruby version
`'ruby -v' or 'ruby --version'`

## How to run?
- filename test.rb:
  - `puts "Hello Ruby!"`
- save it
- run > `ruby test.rb`
- aslo put this `'#!/usr/bin/ruby -w'` on the top of the file

## Extension
    All ruby files has `.rb` extension.

## Whitespace in Ruby Program
    Whitespace characters such as spaces and tabs are generally ignored in Ruby code, except when they appear in strings.

## Line Endings in Ruby Program
- Ruby interprets **semicolons** and **newline** characters as the ending of a statement.
- However, if Ruby encounters operators, such as +, −, or backslash at the end of a line, they indicate the continuation of a statement.

## Ruby Identifiers
- Identifiers are names of variables, constants, and methods.
- Ruby identifiers are **case sensitive**. *Ram* and *RAM* not same.
- It may contain alphaneumeric characters & '_'

## Reserved Words
They mey not be used as variable or constant names.

| BEGIN | do | next | then |
| ------ | ------ | ------ | ------ |
| END | else | nil | true |
| alias | elsif | not | undef |
| and | end | or | unless |
| begin | ensure | redo | until |
| break | false | rescue | when |
| case | for | retry | while |
| class | if | return | while |
| def | in | self | \_\_FILE__ |
| defined? | module | super | \_\_LINE__ |

## Here Document in Ruby
    "Here Document" refers to build strings from multiple lines.

    Following a << you can specify a string or an identifier to terminate the string literal, and all lines following the current line up to the terminator are the value of the string.

    If the terminator is quoted, the type of quotes determines the type of the line-oriented string literal.
    
    Notice there must be no space between << and the terminator.

Here are different examples −
```ruby
#!/usr/bin/ruby -w

print <<EOF
This is the first way of creating
here document ie. multiple line string.
EOF

# same as above
print <<"EOF";
This is the second way of creating
here document ie. multiple line string.
EOF

# you can stack them
print <<"foo", <<"bar"
    I said foo.
foo
    I said bar.
bar

#! execute commands
print <<`EOC`
    echo hi there
    echo lo there
EOC
```

## Ruby BEGIN Statement
```
BEGIN {
   code
}
```
Declares code to be called before the program is run.

***Example***
```ruby
#!/usr/bin/ruby

puts "This is main Ruby Program"

BEGIN {
   puts "Initializing Ruby Program"
}
```

## Ruby END Statement
```
END {
   code
}
```
Declares code to be called at the end of the program.

***Example***
```ruby
#!/usr/bin/ruby

puts "This is main Ruby Program"

END {
   puts "Terminating Ruby Program"
}
BEGIN {
   puts "Initializing Ruby Program"
}
```

## Ruby Comments
- Single line: Using the hash(#) character
    ```
    # I am a comment. Just ignore me.
    or
    name = "Madisetti" # This is again comment
    ```
- Multi Line/Block Comment: From the interpreter with =begin/=end
    ```
    =begin
    This is a comment.
    This is a comment, too.
    This is a comment, too.
    I said that already.
    =end
    ```





