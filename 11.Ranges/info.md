# Ruby: Ranges

Ruby range represents a set of values with a beginning and an end.

They can be constructed using **s..e** and **s...e** literals or with **::new**.

Ruby supports ranges and allows us to use ranges in a variety of ways −
- Ranges as Sequences
- Ranges as Conditions
- Ranges as Intervals

**Example**
```ruby
puts "#{(1..5).to_a}"
puts "#{(-5..-1).to_a}" # include -1
puts "#{(-5...-1).to_a}" # exclulde -1
puts "#{('a'..'e').to_a}"
puts "#{('a'...'e').to_a}"
```
If you need to, you can convert a range to a list using the **to_a** method.

## Ranges as Sequences
Sequences have a start point, an end point, and a way to produce successive values in the sequence.

Ruby creates these sequences using the ''..'' and ''...'' range operators.

The sequence 1..100 is held as a Range object containing references to two Fixnum objects.
```ruby
range1 = (1...5).to_a
range2 = ('bar'..'bat').to_a
range3 = ('me'..'mi').to_a()
puts "#{range1}"    # [1, 2, 3, 4]
puts "#{range2}"    # ["bar", "bas", "bat"]
puts "#{range3}"    # ["me", "mf", "mg", "mh", "mi"]
```
Following are some operations we can perform on ranges:
```ruby
range = 0..5

puts range.include?(3)  # true
puts range.include?(31)  # false

ans = range.min
puts "Minimum value is #{ans}"  #0
ans = range.max
puts "Maximum value is #{ans}"  #5

range.each do |digit|
    puts "In Loop #{digit}"     #[0,1,2,3,4,5]
end

range = 0..9
ans = range.reject{|i| i < 5 }
puts "Rejected values are #{ans}"   #[5, 6, 7, 8, 9]
```
## Ranges as Conditions
```ruby
budget = 50000

watch = case budget
    when 100..1000 then "Local"
    when 1000..10000 then "Titan"
    when 5000..30000 then "Fossil"
    when 30000..100000 then "Rolex"
    else "No stock"
end

puts watch
```

## Ranges as Intervals
Intervals are represented by === case equality operator.
```ruby
if (('a'..'z') === 'v')
    puts "v lies in the above range"
end

if (('50'..'90') === 99)
    puts "z lies in the above range"
end
```

## Ruby Reverse Range
Ruby reverse range operator does not return any value. If left side value is larger than right side value in a range, no vlaue will be returned.

```ruby
puts (5..1).to_a
```
Nothing will be returned in the output for the above example.

To print a reverse order, you can use reverse method in a normal range

```ruby
puts (1..5).to_a().reverse()
```