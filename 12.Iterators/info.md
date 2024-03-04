# Ruby: Iterator

Iterators are nothing but methods supported by collections.

Objects that store a group of data members are called collections.

In Ruby, arrays and hashes can be termed collections.

## Ruby each Iterator
The each iterator returns all the elements of an array or a hash.

Syntax:
```
(collection).each do |variable|
    code...
end
```

```ruby
(1...5).each do |i|
    puts i
end

arr = [3,4,5,6]
arr.each do |i|
    puts i
end
```

## Ruby Times Iterator
A loop is executed specified number of times by the times iterator.

Loop will **start from zero** till one less than specified number.
```ruby
5.times do |n|
    puts n
end

10.times do |n|
    puts n
end

-5.times do |n|     # no output
    puts n
end
```

## Ruby collect Iterator
The collect iterator returns all the elements of a collection.

The collect method **returns the entire collection**, regardless of whether it is an array or a hash.
```ruby
a = [1,2,3,4,5]
b = Array.new()
b = a.collect
puts b.to_a
```
    NOTE − The collect method is not the right way to do copying between arrays. There is another method called a clone, which should be used to copy one array into another array.

## Ruby Upto and Downto Iterators
An upto iterator iterates from number x to number y.
**Syntax:**
```
x.upto(y) do |variable|
    code
end
```
```ruby
1.upto(10) do |n|
    puts n
end
```
## Ruby Step Iterator
A step iterator is used to iterate while **skipping over a range**.
```
(controller).step(x) do |variable|
    code
end
```
Here, x is the range which will be **skipped** during iteration.
```ruby
(10..50).step(5) do |n|
    puts n
end
```

## Ruby Each_Line Iterator
A each_line iterator is used to iterate over a new line in a string.
```ruby
"All\nthe\nwords are\nprinted\nin a\nnew\line.".each_line do |x|
    puts x
end
```
