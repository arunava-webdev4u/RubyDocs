# Ruby: Blocks

- Ruby code blocks are called closures in other programming languages.
- It consist of a group of codes which is always enclosed with ***braces or written between do..end***.
- The **braces** syntax always have the **higher precedence** *over* the **do..end** syntax.
- You assign a name to a block.
- A block is always invoked from a function with the same name as that of the block. This means that if you have a block with the name test, then you use the function test to invoke this block.
- You invoke a block by using the **yield** statement.
- Blocks can have their own arguments.

A block is written in two ways,
- Multi-line between do and end (multi-line blocks are niot inline)
- Inline between braces {}

Both are same and have the same functionality.

**Example:**
```ruby
# multi line block
[10, -20, 30, -55].each do |n|
    puts n   
end
# single line block
[10, -20, 30, -55].each { |n| puts n }
```

## yeild statement
The yield statement is used to call a block within a method with a value.

**Example: without parameter**
```ruby
puts "\n-------- exp 1 --------\n"
def test
    puts "You are in the method"
    yield
    puts "You are again back to the method"
    yield
end
test {puts "You are in the block"}

puts "\n-------- exp 1 --------\n"
def test2
    puts "You are in the method"
    yield
    puts "You are again back to the method"
    yield
end
test2 do
    puts "You are in the block l1"
    puts "You are in the block l2"
end
```
**Example: with parameter**
```ruby
puts "\n-------- exp 1 --------\n"
def prms
    puts "You are in the method prms"
    yield 5
    puts "You are in the method prms"
    yield 100
    puts "You are in the method prms"
end
prms {|i| puts "You are in the block #{i}"}
puts "\n-------- exp 2 --------\n"
def prms
    puts "You are in the method prms"
    yield 5
    puts "You are in the method prms"
    yield 10, 20
    puts "You are in the method prms"
end
prms {|i, j| puts "You are in the block #{i}, #{j}"}
```
You can even pass more than one parameter. In the block, you place a variable between two vertical lines (||) to accept the parameters.

## BEGIN & END block
Ruby BEGIN and END block is used to declare that file is being loaded and file has been loaded respectively.
```ruby
BEGIN { 
   # BEGIN block code 
   puts "BEGIN code block"
} 
END { 
    # END block code 
    puts "END code block"
}
# MAIN block code 
puts "MAIN code block"
```
**Output:**
```
BEGIN code block
MAIN code block
END code block
```



