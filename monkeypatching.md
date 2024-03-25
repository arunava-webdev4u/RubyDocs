# Monkey Patching

In Ruby, monkeypatching refers to the practice of dynamically modifying the behavior of existing classes or modules at runtime to achieve desired outcome.

```ruby
# Original class definition
class String
  def reverse
    "Monkey patched: #{self}".reverse
  end
end

# Using the monkey patched method
puts "Hello".reverse  # Output: "Monkey patched: olleH"
```
In this example:

The reverse method of the String class is monkey patched to prepend "Monkey patched: " to the reversed string.

When "Hello".reverse is called, instead of the original behavior of reversing the string, the monkey patched version is invoked, resulting in the output "Monkey patched: olleH".
