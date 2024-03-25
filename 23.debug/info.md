# Ruby: Debug

On terminal use 'c' or 'continue' keyword to jump to the next debugger position.

Or use 's' or 'step' keyword to execute line by line.

Use 'i' or 'info' keyword to get info about all available variables.

```ruby
require "debug"
# debug is a standard library for debugging

candy = "My favorite candy"
puts candy

debugger
# binding.break

candy = "Amul"
puts "Now it's #{candy}"

debugger
# binding.break

puts "end"
```

Press 'q' to stop execution.