# Ruby: Hashes

A Ruby hash is a collection of **unique keys** and their values. They are similar to arrays but array use integer as an index and hash use any object type. They are also called associative arrays, dictionaries or maps.

If you attempt to access a hash with a key that **does not exist**, the method will **return nil**.

The order in which you traverse a hash by either key or value may seem arbitrary and will generally not be in the insertion order.

## Creating Ruby Hash
As with arrays, there is a variety of ways to create hashes.

You can create an **empty hash** with the new class method −

```ruby
months = Hash.new
puts months[0]  # nil
puts months[12] # nil
```
You can also use new to create a hash with a default value, which is otherwise just nil −
```ruby
months = Hash.new("month")
# or
months = Hash.new "month"
puts months[0]  # month
puts months[12] # month
```

```ruby
H = Hash["a" => 100, "b" => 200]

puts "#{H['a']}"
puts "#{H['b']}"
```
```ruby
H = Hash["a" => 100, "b" => 200, 3 => 'hello', 22 => "ruby", 2 => 3]
puts "#{H['a']}"
puts "#{H['b']}"
puts "#{H[3]}"
puts "#{H[22]}"
puts "#{H[2]}"
# or
h = { "a" => 100, "b" => 200, 3 => 'hello', 22 => "ruby", 2 => 3 }
puts "#{h['a']}"
puts "#{h['b']}"
puts "#{h[3]}"
puts "#{h[22]}"
puts "#{h[2]}"
```

## Modifying Ruby Hash
Adding or removing a key value pair in an already existing hash.
```ruby
color = {
    "Rose" => "red",
    "Lily" => "purple",
    "Marigold" => "yellow",
    "Jasmine" => "white"
}
color['Tulip'] = "pink"     # Gets added
color.each do |key, value|
    puts "#{key} color is #{value}"
end
```
Here ``'Tulip':"pink"`` gets added.
```ruby
color["Rose"] = "dark red"  # value gets updated
color.each do |key, value|
    puts "#{key} color is #{value}"
end
```
```ruby
color["Rose"] = nil  # value gets updated to 'nil'
color.each do |key, value|
    puts "#{key} color is #{value}"
end
```

## Ruby Hash Methods
### Public Class Methods
| Method | Description |
| ------------ | ------------ |
| Hash[object] | Create a new hash with given objects. |
| new(obj) | Return a new empty hash. |
| try_convert(obj) | Try to convert obj into hash. |
### Public Instance Methods
| Method | Description |
| ------------ | ------------ |
| hsh.keys() | get array of keys |
| hsh==other_hash | Two hashes are equal if they contain same key and value pair. |
| hsh[key] | Retrieve value from the respective key. |
| hsh[key] = value | Associates new value to the given key. |
| assoc(obj) | Compare obj in the hash. |
| hash.delete(key) | Deletes a key-value pair from hash by key. |
| hash.store(key, value) | Stores a key-value pair in hash. |
| clear | Remove all key value pair from hash. |
| empty? | Return true if hash contains no key value pair. |
| fetch(key[, default]) | Return value from hash for a given key. |
| flatten | Return a new array that is a one-dimensional flattening of this hash. |
| has_key?(key)| Return true if given key is present in hash. |
| has_value?(value)| Return true if given value is present in hash for a key. |
| include?(key) | Return true if given key is present in hash. |
| to_s/ inspect | Return content of hash as string. |
| hash.invert | Creates a new hash, inverting keys and values from hash; that is, in the new hash, the keys from hash become values and values become keys. |
| hash.length | Returns the size or length of hash as an integer. |
| hash.size | Returns the size or length of hash as an integer. |
| hash.merge(other_hash) | Returns a new hash containing the contents of hash and other_hash, overwriting pairs in hash with duplicate keys with those from other_hash. |
| hash.merge!(other_hash) | Same as merge, but changes are done in place. |
| hash.replace(other_hash) | Replaces the contents of hash with the contents of other_hash. |
| hash.sort | Converts hash to a two-dimensional array containing arrays of key-value pairs, then sorts it as an array. |
| hash.to_a | Creates a two-dimensional array from hash. Each key/value pair is converted to an array, and all these arrays are stored in a containing array. |
| hash.to_s | Converts hash to an array, then converts that array to a string. |
| hash.update(other_hash) | Returns a new hash containing the contents of hash and other_hash, overwriting pairs in hash with duplicate keys with those from other_hash. |