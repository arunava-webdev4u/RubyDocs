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