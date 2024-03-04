#!/usr/bin/ruby

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