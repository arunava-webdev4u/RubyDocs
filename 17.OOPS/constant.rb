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