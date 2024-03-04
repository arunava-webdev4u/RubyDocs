#!/usr/bin/ruby

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