#!/usr/bin/ruby

class Sample2
    @@no_of_customers = 0
    def initialize(id, name, addr)
       @cust_id = id
       @cust_name = name
       @cust_addr = addr
    end

    def hello
        puts @cust_id, @cust_name, @cust_addr
    end
 end

# Now using above class to create objects
object = Sample2.new(2, 'arunava', 'india')
object.hello