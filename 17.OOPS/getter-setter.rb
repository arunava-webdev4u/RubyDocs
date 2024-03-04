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