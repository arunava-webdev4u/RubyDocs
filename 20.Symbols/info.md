# Symbols

A symbol looks like this:
```ruby
:testing
```
Some people confuse symbols with **variables**, but they have nothing to do with variable.

A symbol is a **lot more like a string**.

### So what are the differences between Ruby symbols & strings?

Strings are used to work with data. Symbols are **identifiers**.

Symbols are not just another kind of string, they have a different purpose.

## When to Use Symbols
One of the most common uses for symbols is to represent method & instance variable names.

Example:
```ruby
attr_reader :title
```
The `:title` after `attr_reader` is a symbol that represents the `@title` instance variable.

You can also use symbols as hash keys.

**Example:**
```ruby
hash = {a: 1, b: 2, c: 3}
```
```ruby
arr = [2,4,6,"60",12,"23"]

puts arr.first

puts arr.send(:first)
```
```ruby
str = "rubyguides"

puts str
str.to_sym

puts :rubyguides
```
**The benefits? (they are faster)**

Symbols look better, they are immutable & if you benchmark string keys vs symbols keys you will find that string keys are about 1.70x slower.

By immutable I mean that **every symbol is unique**, and it can’t be changed:
```ruby
:rubyguides.object_id
# 437768
```
```ruby
:rubyguides.object_id
# 437768
```

These two symbols are the same object because they have the same object id.