# ruby: Modules

Modules are a way of grouping together methods, classes, and constants. Modules give you two major benefits.
- Modules provide a namespace and prevent name clashes.
- They allow the mixin facility to share functionality between classes.
## Syntax
```
module Identifier
   statement1
   statement2
   ...........
end
```
As with class methods, you call a module method by preceding its name with the module's name and a **period**, and you reference a constant using the module name and **two colons**.
**Example:**
```ruby
# module is defined in user_tools.rb file
module Tools
    def sayhi(name)
        puts "hello #{name}!"
    end
    def saybye(name)
        puts "bye bye #{name} :("
    end
    # def greet() # also works
    def greet
        puts "Welcome user"
    end
    def Tools.ask
        puts "Do you need something?"
    end
end

=begin
include Tools
Tools.sayhi("Arunava")
Tools.greet
Tools.ask
Tools.saybye("Arunava") 
=end
```

## require Statement
The require statement is similar to the include statement of C and C++ and the import statement of Java. If a third program wants to use any defined module, it can simply load the module files using the Ruby require statement −
**Syntax**
```
require filename
```
***Here, it is not required to give .rb extension along with a file name.***
**Example**
```ruby
$LOAD_PATH << '.'
require 'user_tools.rb'
require 'user_tools'
#or

require_relative "user_tools.rb"
require_relative "user_tools" 

y = Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERY_BAD)
```
***Here we are using $LOAD_PATH << '.' to make Ruby aware that included files must be searched in the current directory.***

***If you do not want to use $LOAD_PATH then you can use require_relative to include files from a relative directory.***

    Here, both the files contain the same function name. So, this will result in code ambiguity while including in calling program but modules avoid this code ambiguity and we are able to call appropriate function using module name.

## include Statement
To embed a module in a class, you use the include statement in the class

**Syntax**
```
include modulename
```
If a module is defined in a separate file, then it is required to include that file using require statement before embedding module in a class.

**Example**
```ruby
<.rb files>
```

## Mixins

When a class can inherit features from more than one parent class, the class is supposed to show multiple inheritance.

Ruby doesn't support multiple inheritance. Modules eliminate the need of multiple inheritance using mixin in Ruby.

A module doesn't have instances because it is not a class. However, a module can be included within a class.

When you include a module within a class, the class will have access to the methods of the module.

```ruby
module A
    def talk()
        puts "Talking..."
    end
end

module B
    def walk()
        puts "Walking..."
    end
    def sleep ()
        puts "Sleeping..."
    end
end

class Sample
include A
include B
    def play()
        puts "Playing..."
    end
end

obj = Sample.new()
obj.talk()
obj.walk()
obj.sleep()
obj.play()

```