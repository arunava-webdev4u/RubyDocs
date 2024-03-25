# Ruby: Metaprogramming
Metaprogramming in Ruby refers to the ability of a program to modify or generate code dynamically during runtime. 

There are several techniques and features in Ruby that facilitate metaprogramming:

Dynamic Method Definitions: Ruby allows you to define methods dynamically at runtime using define_method or by directly manipulating the class and module objects.

Open Classes: In Ruby, classes can be reopened and modified after their initial definition. This allows you to add new methods, modify existing ones, or even remove methods from classes.

Method Missing: As discussed earlier, the method_missing method allows you to intercept method calls for undefined methods and handle them dynamically.

Reflection: Ruby provides reflection mechanisms that allow you to examine and modify the structure of classes and objects at runtime. This includes features like instance_variables, methods, send, class, and is_a?.

Eval and Binding: Ruby's eval method allows you to execute strings of Ruby code dynamically. Combined with the binding object, you can evaluate code within the context of a specific object, class, or module.

DSLs (Domain Specific Languages): Metaprogramming is commonly used to create DSLs in Ruby. By defining methods and classes that are specific to a certain domain, you can create a more expressive and readable interface for working with complex systems.

## Small Example 1: Open Classes
```ruby
class Baseball
end
# p Baseball.new.swing  #err


class Baseball
  def swing
    "Homerun"
  end
end
p Baseball.new.swing

class Baseball
  def swing
    "Strike"
  end
end
p Baseball.new.swing

# It will take the latest definition
```

## Method Missing
In Ruby, method_missing is a special method that gets called when you try to call a method on an object that doesn't exist. It's like a fallback mechanism that allows you to handle method calls for methods that haven't been explicitly defined in your class.

```ruby
class MyClass
  def basic_method
    puts "This is a basic method"
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' is missing!"
  end
end

obj = MyClass.new
obj.basic_method
obj.some_method # This method doesn't exist
```
### respond to missing
In Ruby, respond_to_missing? is a method that complements method_missing. While method_missing is called when an object receives a message for a method it doesn't recognize, respond_to_missing? is invoked to determine if an object responds to a method that it doesn't recognize.

```ruby
class MyClass
  def method_missing(method_name, *args)
    puts "Method '#{method_name}' is missing!"
  end
  
  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('custom_') || super
  end
end

obj = MyClass.new

# The object doesn't respond to 'some_method'
puts obj.respond_to?(:some_method) #=> false

# But it does respond to 'custom_method' based on respond_to_missing?
puts obj.respond_to?(:custom_method) #=> true
```

## Define Method
define_method is a metaprogramming feature in Ruby that allows you to define methods dynamically at runtime. It's particularly useful when you want to create methods based on conditions or when you want to define multiple similar methods programmatically.

Here's how define_method works:
```ruby
class MyClass
  define_method :dynamic_method do |arg|
    puts "Dynamic method called with argument: #{arg}"
  end
end

obj = MyClass.new
obj.dynamic_method("Hello") # Output: Dynamic method called with argument: Hello
```
In this example:

We use define_method to dynamically define a method named dynamic_method within the MyClass class.
The method takes one argument arg, which is then used within the method body to output a message.
When we create an instance of MyClass and call dynamic_method on it, the dynamically defined method gets executed with the provided argument.
One of the key advantages of define_method is its ability to create methods with dynamic names and behavior. You can use variables, loops, conditionals, or any other Ruby code to generate method names and bodies dynamically.

Here's an example of using define_method within a loop:

```ruby
class MyClass
  (1..5).each do |i|
    define_method "dynamic_method_#{i}" do
      puts "Dynamic method #{i} called"
    end
  end
end

obj = MyClass.new
obj.dynamic_method_3 # Output: Dynamic method 3 called
```

## Eval

The eval method in Ruby allows you to evaluate a string containing Ruby code as if it were directly written in your program. It essentially executes the code within the string.

It takes a string argument containing the Ruby code you want to evaluate.

```ruby
x = 10
puts eval("x + 5")  # Output: 15
```

```ruby
code_str = "message = 'Hello, world!'
puts message"

eval(code_str)  # This will print "Hello, world!"
```