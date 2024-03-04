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