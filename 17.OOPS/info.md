# Ruby: OOPS

Following are some basic concepts in OOPs:
- Encapsulation
- Polymorphism
- Inheritance
- Abstraction

**Encapsulation**: It hides the implementation details of a class from other objects due to which a class is unavailable to the rest of the code. Its main purpose is to protect data from data manipulation.

**Abstraction**: It hides the complexity of a class by modelling classes appropriate to the problem.

**Inheritance**: It creates new classes from pre defined classes. New class inherit behaviors of its parent class which is referred as superclass. In this way, pre defined classes can be made more reusable and useful.

**Polymorphism**: It is the ability to represent an operator or function in different ways for different data input.

***Class, Object and Methods are already discussed in the previous sections.***

## The accessor & setter Methods
To make the variables available from outside the class, they must be defined within accessor methods, these accessor methods are also known as a getter methods.
```ruby
class Box
    # constructor method
    def initialize(w, h)
        @width = w
        @height = h
    end
  
    # accessor methods
    def printWidth
        return @width
    end
  
    def printHeight
        @height
    end
end
  
# create an object
box = Box.new(10, 20)
# use accessor methods
x = box.printWidth
y = box.printHeight

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"
```
Similar to accessor methods, which are used to access the value of the variables, Ruby provides a way to set the values of those variables from outside of the class using setter methods, which are defined as below −
```ruby
#!/usr/bin/ruby

class Box
    # constructor method
    def initialize(w, h)
        @width = w
        @height = h
    end
  
    # accessor methods
    def printWidth
        return @width
    end
    def printHeight
        @height
    end

    # setter methods
    def setWidth=(value)
        @width = value
    end
    def setHeight=(value)
        @height = value
    end
end
  
# create an object
box = Box.new(10, 20)

# use accessor methods
x = box.printWidth
y = box.printHeight
puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

# use setter methods
box.setWidth = 30
box.setHeight = 50

# use accessor methods
x = box.printWidth
y = box.printHeight
puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"
```

## The to_s Method
Any class you define should have a to_s instance method to return a string representation of the object.
```ruby
class Box
    # constructor method
    def initialize(x, y, z)
        @width, @height, @volume = x, y, z
    end

    # define to_s method
    def to_s
        "(x:#@width, y:#@height, z:#@volume)"  # string formatting of the object.
    end
 end
 
# create an object
box = Box.new(10, 20, 25)
 
# to_s method will be called in reference of string automatically.
puts "String representation of box is : #{box}"
```

## Access Control
Ruby gives you **three levels** of protection **at instance methods level**, which may be **public**, **private**, or **protected**.

Ruby **does not apply** any **access control** over **instance and class variables**.

- **Public Methods** − Public methods can be called by anyone. Methods are public by default except for **initialize**, which is always private.
- **Private Methods** − Private methods cannot be **accessed**, or even **viewed** **from outside** the class. **Only the class methods** can access private members.
- **Protected Methods** − A protected method can be invoked only by **objects of the defining class and its subclasses**. Access is kept within the family.
```ruby
#!/usr/bin/ruby

# define a class
class Box
    # constructor method
    def initialize(w,h)
       @width, @height = w, h
    end

    # define private accessor methods----------
    def getWidth
        @width
    end
    def getHeight
        @height
    end
    # make them private
    private :getWidth, :getHeight

    # instance method by default it is public-----------
    def getArea
        getWidth() * getHeight
    end
 
    # instance method to print area------------
    def printArea
        @area = getWidth() * getHeight
        puts "Big box area is : #@area"
    end
    # make it protected
    protected :printArea
end
 
# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# call private methods
puts getHeight()    # error, not found (private, not visible)

# try to call protected or methods
# box.printArea()   #error, protected
```

## Inheritance
In inheritance, we create new classes using pre defined classes. Newly created classes are called **derived classes** and classes from which they are derived are called **base classes**.

In Ruby, < character is used to create a subclass. The syntax is shown below:
``parentClass < subClass``
```ruby
#!/usr/bin/ruby

class Parent
    def initialize
        puts "Parent class created"
    end
end

class Child < Parent
   def initialize
        super   # super method calls the constructor of the Parent class
        puts "Child class created"
   end
end

Parent.new
Child.new
```

## Methods Overriding
Though you can add new functionality in a derived class, but sometimes you would like to **change the behavior of already defined method in a parent class**.

Keeping the method name same and overriding the functionality of the method as shown below in the example −
```ruby
#!/usr/bin/ruby

# define a class
class Box
    # constructor method
    def initialize(w,h)
        @width, @height = w, h
    end
    # instance method
    def getArea
        @width * @height
    end
end
 
# define a subclass
class BigBox < Box
    # change existing getArea method as follows
    def getArea
        @area = @width * @height
        puts "Big box area is : #@area"
    end
end

box = Box.new(10, 20)
puts box.getArea()

bigbox = BigBox.new(10, 20)
# print the area using overriden method.
bigbox.getArea()
```

## Freezing Objects
Sometimes, we want to prevent an object from being changed. The freeze method in Object allows us to do this, effectively turning an object into a constant.

Any object can be frozen by invoking **Object.freeze**. A frozen object may not be modified: **you can't change its instance variables**.

You can check if a given object is already frozen or not using **Object.frozen?** method.

```ruby
#!/usr/bin/ruby

# define a class
class Box
    # constructor method
    def initialize(w,h)
        @width, @height = w, h
    end
 
    # accessor methods
    def getWidth
        @width
    end
    def getHeight
        @height
    end
 
    # setter methods
    def setWidth=(value)
        @width = value
    end
    def setHeight=(value)
        @height = value
    end
 end
 
# create an object
box = Box.new(10, 20)

# let us freez this object
box.freeze
if( box.frozen? )
    puts "Box object is frozen object"
else
    puts "Box object is normal object"
end

# now try using setter methods
# box.setWidth = 30   # error
# box.setHeight = 50  # error

# # use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"
```

## Class Constants
You can define a constant inside a class by assigning a direct numeric or string value to a variable, which is defined without using either @ or @@.

By convention, we keep constant names in upper case.

You can access a constant directly inside a class much like a variable but if you want to access a constant outside of the class then you would have to use classname::constant

```ruby
#!/usr/bin/ruby

# define a class
class Box
    COMPANY = "PSL"
    BOXWEIGHT = 10
    # constructor method
    def initialize(w,h)
        @width, @height = w, h
    end
    # instance method
    def getArea
        @width * @height
    end
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"
puts Box::COMPANY
puts "Box weight is: #{Box::BOXWEIGHT}"
```

## Create Object Using Allocate
There may be a situation when you want to create an object without calling its constructor initialize i.e. using new method, in such case you can call allocate, which will create an uninitialized object.
```ruby
# define a class
class Box
    attr_accessor :width, :height
 
    # constructor method
    def initialize(w,h)
        @width, @height = w, h
    end
 
    # instance method
    def getArea
        @width * @height
    end
end
 
# create an object using new
box1 = Box.new(10, 20)

# create another object using allocate
box2 = Box.allocate

# call instance method using box1
a = box1.getArea()
puts "Area of the box is : #{a}"

# call instance method using box2
a = box2.getArea()  # error
puts "Area of the box is : #{a}"
```

## Class Information
If class definitions are executable code, this implies that they execute in the context of some object: self must reference something. Let's find out what it is.
```ruby
class Box
    # print class information
    def info
        puts "Type of self = #{self.type}"
        puts "Name of self = #{self.name}"
    end
end
box = Box.new()
box.info()
```

**Output:**
```
Type of self = Class
Name of self = Box
```

## Operator Overloading
Let's say we'd like the + operator to perform vector addition of two Box objects using +. We can do this with operator overloading.

```ruby
class Box
    def initialize(w,h) # Initialize the width and height
        @width,@height = w, h
    end
 
    def +(other) # Define + to do vector addition
        Box.new(@width + other.width, @height + other.height)
    end
 
    def -@ # Define unary minus to negate width and height
        Box.new(-@width, -@height)
    end
 
    def *(scalar) # To perform scalar multiplication
        Box.new(@width*scalar, @height*scalar)
    end
end
```