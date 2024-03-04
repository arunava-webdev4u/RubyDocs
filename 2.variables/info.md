# Ruby: Variables, Constants and Literals
There are **five types** of variables supported by Ruby.

## 1. Ruby Global Variables
- Global variables begin with $.
- Uninitialized global variables have the value **nil** and ***produce warnings with the -w option***.
    ```ruby
    Throws warning:
    
    #!/usr/bin/ruby -w
    $global_variable
    puts $global_variable
    -----------------------
    No warning:

    #!/usr/bin/ruby
    $global_variable
    puts $global_variable
    ```
-  It is not recommended to use global variables.

**NOTE** − In Ruby, you CAN access value of any variable or constant by putting a **hash (#)** character just before that variable or constant.

## Ruby Instance Variables
- Instance variables begin with @.
- Uninitialized instance variables have the value nil and produce warnings with the -w option.

## Ruby Class Variables
- Class variables begin with @@.
- Must be initialized before they can be used in method definitions.
- Referencing an uninitialized class variable produces an error.
- Class variables are shared among descendants of the class or module in which the class variables are defined.
- Overriding class variables produce warnings with the -w option.

## Ruby Local Variables
- Local variables begin with a lowercase letter or _.
- The scope of a local variable ranges from class, module, def, or do to the corresponding end or from a block's opening brace to its close brace {}.
- When an uninitialized local variable is referenced, it is interpreted as a call to a method that has no arguments.
- Assignment to uninitialized local variables also serves as variable declaration.
- The variables start to exist until the end of the current scope is reached. The lifetime of local variables is determined when Ruby parses the program.

## Ruby Constants
- Constants begin with an uppercase letter.
- Constants defined within a class or module can be accessed from within that class or module, and those defined outside a class or module can be accessed globally.
- Referencing an uninitialized constant produces an error.
- Making an assignment to a constant that is already initialized produces a warning.

## Ruby Pseudo-Variables
    They are special variables that have the appearance of local variables but behave like constants. You cannot assign any value to these variables.
***
- **self** − The receiver object of the current method.
- **true** − Value representing true.
- **false** − Value representing false.
- **nil** − Value representing undefined.
- **\_\_FILE__** − The name of the current source file.
- **\_\_LINE__** − The current line number in the source file.

## Integer Numbers
- Integers and floating point numbers come in the category of numbers.
- An integer number can range from -2^30 to 2^30-1 or -2^62 to 2^62-1.
- Integers within this range are objects of class **Fixnum** and integers outside this range are stored in objects of class **Bignum**.
- You write integers using an optional leading sign, an optional base indicator (0 for octal, 0x for hex, or 0b for binary), followed by a string of digits in the appropriate base. Underscore characters are ignored in the digit string.
    ```
    123                  # Fixnum decimal
    1_234                # Fixnum decimal with underline
    -500                 # Negative Fixnum
    0377                 # octal
    0xff                 # hexadecimal
    0b1011               # binary
    ?a                   # character code for 'a'
    ?\n                  # code for a newline (0x0a)
    12345678901234567890 # Bignum
    ```

## Floating Numbers
Floating-point numbers are objects of class Float and can be any of the following.
```
123.4                # floating point value
1.0e6                # scientific notation
4E20                 # dot not required
4e+20                # sign before exponential
```

## String Literals
- They are objects of class String.
- Double-quoted strings allow substitution and backslash notation.
- Single-quoted strings don't allow substitution and allow backslash notation only for \\\\ and \\'
- You can substitute the value of any Ruby expression into a string using the sequence **#{ expr }**.

## Backslash Notations
| Notation | Character represented |
| ---------- | ---------- |
| \n | Newline (0x0a) |
| \r | Carriage return (0x0d) |
| \f | Formfeed (0x0c) |
| \b | Backspace (0x08) |
| \a | Bell (0x07) |
| \e | Escape (0x1b) |
| \s | Space (0x20) |
| \nnn | Octal notation (n being 0-7) |
| \xnn | Hexadecimal notation (n being 0-9, a-f, or A-F) |
| \cx, \C-x | Control-x |
| \M-x | Meta-x (c \| 0x80) |
| \M-\C-x |	Meta-Control-x |
| \x | Character x |

## Ruby Arrays
Literals of Ruby Array are created by placing a comma-separated series of object references between the square brackets. A trailing comma is ignored.

**Example**
```ruby
#!/usr/bin/ruby

ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
```

## Ruby Hashes
A literal Ruby Hash is created by placing a list of key/value pairs between braces, with either a comma or the sequence => between the key and the value. A trailing comma is ignored.

**Example**
```ruby
#!/usr/bin/ruby

hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
```

## Ruby Ranges
A Range represents an interval which is a set of values with a start and an end. Ranges may be constructed using the s..e and s...e literals, or with Range.new.

A range **(1..5) means it includes 1, 2, 3, 4, 5** values and a range **(1...5) means it includes 1, 2, 3, 4** values.

```ruby
(10..15).each do |n| 
    print n, ' ' 
end
```




