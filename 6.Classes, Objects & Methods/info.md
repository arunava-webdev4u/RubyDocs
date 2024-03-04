# Ruby: Classes & Objects

In object-oriented programming language, we design programs using objects and classes. Object is a physical as well as logical entity whereas class is a logical entity only.

Ruby is a perfect Object Oriented Programming Language, which include,
- Data Encapsulation
- Data Abstraction
- Polymorphism
- Inheritance
## Ruby Object
**Object** is the **default root** of all Ruby objects. Ruby objects inherit from **BasicObject** (it is the **parent class of all classes** in Ruby) which allows creating alternate object hierarchies.

## Defining a Class in Ruby
- Each Ruby class is an instance of class **Class**.
- A class in Ruby always starts with the keyword **class** followed by the **name** of the class.
- Conventionally, for class name we use CamelCase, and should start with capital letter.
- Defining class is finished with **end** keyword.

**Example:**
```ruby
class Customer
    ....
    ....
end
```

## Variables in a Ruby Class
Ruby provides **four** types of variables −
- **Local Variables** − Local variables are the variables that are defined in a method. Local variables are not available outside the method. Local variables ***begin with a lowercase letter or _***.
- **Instance Variables** − Instance variables are available across methods for any particular instance or object. That means that instance variables change from object to object. Instance variables are ***preceded by the at sign '@'*** followed by the variable name.
- **Class Variables** − Class variables are available across different objects. A class variable belongs to the class and is a characteristic of a class. They are ***preceded by the sign '@@'*** and are followed by the variable name.
- **Global Variables** − Class variables are not available across classes. If you want to have a single variable, which is available across classes, you need to define a global variable. The global variables are always **preceded by the dollar sign ($)**.

## Creating Objects in Ruby using new Method
Objects in Ruby are created by calling new method of the class. It is a unique type of method and predefined in the Ruby library.
Ruby objects are instances of the class.

**Example:**

We have a class named Java. Now, let's create an object java and use it with following command,
```ruby
java = Java.new("John")  
```
The method new is a unique type of method, which is predefined in the Ruby library.

The new method belongs to the class methods.

***Example***
```ruby
class Sample
    def hello
        puts "Hello Ruby!"
    end
end

# Now using above class to create objects
object1 = Sample. new
object2 = Sample.new
object3 = Sample.new()
object1.hello
object2.hello()
object3.hello
```

## Custom Method to Create Ruby Objects
- You can pass parameters to method new and those parameters can be used to initialize class variables.
- When you plan to declare the new method with parameters, you need to declare the method initialize at the time of the class creation.
- The initialize method is a **special type of method**, which will be **executed when the new method of the class is called** with parameters.

***Example***
```ruby
class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
end
```
- **def** and **end** are used to define a Ruby method initialize.
- In the initialize method, **you pass on the values of these local variables to the instance variables.**

We can create objects of this class,
```ruby
cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")
```

## Member Functions in Ruby Class
```ruby
class Sample
   def function
      statement 1
      statement 2
   end
end
```
- Ruby methods are similar to the functions in other lnguages.
- Each method in a class starts with the keyword **def** followed by the method name.
- The method name always **preferred** in **lowercase** letters. You end a method in Ruby by using the keyword **end**.

**Example**

```ruby
class Sample
   def hello
      puts "Hello Ruby!"
   end
end
```

**Example 2**
```ruby
#!/usr/bin/ruby

class Sample
   def hello
      puts "Hello Ruby!"
   end
end

# Now using above class to create objects
object = Sample. new
object.hello
```

## Ruby Methods
Ruby methods are similar to the functions in other lnguages.

Method names should begin with a **lowercase letter**. If you begin a method name with an uppercase letter, Ruby might think that it is a constant and hence can parse the call incorrectly.

Ruby method is defined with the def keyword and at the end we need to use end keyword.

### Defining Method with Parameter
```ruby
def welcome (name)
   puts "Welcome #{name}!!"
end
welcome('Arunava Das')
welcome('Anirban')

def sum (a, b, c)
   sum = a + b + c
   puts "Sum: #{sum}"
end
# sum(2,3)    # error: wrong no. of args.
sum(1,2,3)      #6
```
### Default values for the parameters,
```ruby
def defaultParams (var1 = 'arg1', var2 = 'arg2')
   puts "val1: #{var1}"
   puts "val2: #{var2}"
end
defaultParams()     # arg1, arg2
defaultParams("hello")  # hello, arg2
defaultParams(6, "hello")  # 6, hello
```

### Return Values
The return statement in ruby is used to return one or more values from a Ruby Method.
```ruby
def test1
   i = 99
   return i
end
def test2
   i = 100
   j = 200
   k = 300
   return i, j, k
end
var = test1
puts "#{var}"   # 99
var = test2
puts "#{var}"   # [100, 200, 300]
```
If **more than two expressions** are given, the **array** containing these values will be the return value.

If **no expression** given, **nil** will be the return value.
```
return
OR
return 12
OR
return 1,2,3
```

### Variable Number of Parameters
```ruby
def sample (*test)
   puts "The number of parameters is #{test.length}"
   for i in 0...test.length
      puts "The parameters are #{test[i]}"
   end
end
sample()
# The number of parameters is 0

sample "one"
# The number of parameters is 1
# The parameters are one

sample "Zara", "6", "F"
# The number of parameters is 3
# The parameters are Zara
# The parameters are 6
# The parameters are F

sample("Mac", "36", "M", "MCA")
# The number of parameters is 4
# The parameters are Mac
# The parameters are 36
# The parameters are M
# The parameters are MCA
```

## Class Methods
When a method is defined **outside of the class** definition, the method is marked as **private** by default.

On the other hand, the methods defined **in the class** definition are marked as **public** by default.

Whenever you want to access a method of a class, you first **need to instantiate the class**. Then, using the object, you can access any member of the class.

Ruby gives you a way to access a method without instantiating a class.

**Syntax:**
```ruby
class Accounts
   def reading_charge
      ....
   end
   def Accounts.return_date
      ....
   end
end
```
Here **return_date** is declared with the **class name** followed by a **period**, which is followed by the **name of the method**. 

You can access this class method directly, without creating an object is as follows −
``Accounts.return_date``









