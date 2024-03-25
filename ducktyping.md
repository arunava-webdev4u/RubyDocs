# Duck Typing
In Ruby, duck typing is a fundamental concept based on the saying "If it walks like a duck and quacks like a duck, then it must be a duck." It emphasizes that objects are defined by the messages (methods) they respond to, rather than their specific class hierarchy.

Core Principle:

In Ruby (and other dynamically typed languages), the type of an object is determined at runtime, not during compilation.

Duck typing focuses on whether an object has the necessary methods to perform a certain operation, not on its exact class.

### Example
```ruby
class IceCream
  attr_reader :flavor, :calories, :price

  def initialize(flavor, calories, price)
    @flavor = flavor
    @calories = calories
    @price = price
  end

  def ==(other)
    calories == other.calories && price == other.price
  end
end

class Candy
  attr_reader :calories, :price

  def initialize(calories, price)
    @calories = calories
    @price = price
  end

end

icecream = IceCream.new("Vanilla", 200, 5)
candy = Candy.new(200, 5)

# ALthough they are different classes, they are comparable
p icecream == candy
```