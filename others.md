# How to Use Ruby BEGIN and END Blocks

There are **two types** of Ruby Begin and End blocks.

A simple Google search of “Ruby begin end blocks” will lead you to either of these two kinds of articles – the ones in **all caps (BEGIN and END)** and the ones **usually separated by a slash (begin/end)**.

Both of these are different things but confused with the same name.

## What are Ruby BEGIN and END Blocks?
Ruby’s BEGIN and END blocks **(in uppercase)** are reserved keywords in Ruby and are pretty straightforward to use.

They enable you to specify blocks of code that you want your program to run at the **beginning and end** of its execution, **regardless of their position** in the source file. 

They use curly braces {} to enclose the block’s code after the respective (BEGIN or END) keywords.

```ruby
puts "Hello world! (1)"
BEGIN { # to be executed first, when the file loads up
    puts "The BEGIN block"
}
END {   # runs after the program execution is done
    puts "The END block"
}
puts "Hello world! (2)"
```
***Output***
```
The BEGIN block
Hello world! (1)
Hello world! (2)
The END block
```
### Multiple BEGIN blocks
You can also use multiple BEGIN blocks to segregate chunks of code. These blocks execute according to their sequence in the code, i.e., blocks defined earlier (higher up) in the source file execute earlier.
```ruby
puts "Hello world! (1)"
BEGIN {  # to be executed first, when the file loads up
    puts "<BEGIN block (1)>"
}
BEGIN { # to be executed second
    puts "<BEGIN block (2)>"
}
puts "Hello world! (2)"
```
***Output***
```
<BEGIN block (1)>
<BEGIN block (2)>
Hello world! (1)
Hello world! (2)
```
In simple terms – the END block defined first always goes last.

### Multiple END blocks
It is just the **opposite** of **multiple BEGIN** blocks. They will execute according to the reverse order sequence in the source code.
```ruby
END {
    puts "<END block (1)>"
}
puts "Hello world! (1)"
END {
    puts "<END block (2)>"
}
puts "Hello world! (2)"
```
***Output***
```
Hello world! (1)
Hello world! (2)
<END block (2)>
<END block (1)>
```

## Variable Scope
As shown in the example below, variables **declared inside** the BEGIN block are available in the **global scope**.
```ruby
BEGIN {
    a = "Hello world!"
}
BEGIN {
    puts a  # Hello world!
    a += " Jell-O world!"   # Hello world! Jell-O world!
}
puts a
```
Similar to BEGIN, the **END block** also operates on the **global scope**.

### Another Example
```ruby
puts "main program"
val+=10

BEGIN {
    val = 10
}
END {
    puts "END: #{val}"
}
```
***Output***
```
main program
END: 20
```

## When to use them?
Though BEGIN and END blocks are not very common in practice, they can be helpful in various situations.

BEGIN blocks enable you to logically segregate parts of code used to open network connections (e.g., to a database) and data streams (e.g., for logging), fetch configuration options and perform other global initializations.

On the other hand, END blocks can help clean up unwanted objects, perform customized garbage collection, close any open network connections and data stream handlers, and other global shutdown operations.

# The More Common Ruby begin/end Blocks
Ruby’s **begin and end** keywords (lowercase) enable us to declare many code statements and **group them into a block-like** control structure.

It is interesting that Ruby methods also implicitly use a begin/end-like construct to group code statements.

Also, like in methods, a begin/end block **returns the value of the last statement** in it.

Here’s an example –
```ruby
puts begin
    a = "Hello "
    b = "world!"
    a + b # returned value
end
```
Output: ``Hello world!``

We can also save the block as a variable and invoke it wherever we like.
```ruby
my_hello_world_str = begin
    a = "Hello "
    b = "world!"
    a + b
end

puts my_hello_world_str
```

However, it is worth mentioning that begin/end blocks (unlike do/end ones) **can not be passed to Ruby functions**. 

Here’s an example showing how the block **returns only the last statement**.

```ruby
puts begin
    "foo"
    "bar"
    "baz" # returned value
end
```
















[Reas more](https://scoutapm.com/blog/ruby-begin-end)
