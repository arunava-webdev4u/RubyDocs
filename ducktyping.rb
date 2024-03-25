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
