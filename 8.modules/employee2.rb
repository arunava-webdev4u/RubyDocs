#!/usr/bin/ruby

require_relative "company_details"

class New_Employee
    include Company
    def initialize(name, age, exp)
        @name = name
        @age = age
        @exp = exp
    end

    def name()
        puts "Name is : #{@name}"
    end
    def experience()
        puts "Years of experience : #{@exp}"
    end
    def age
        puts "Age is : #{@age}"
    end

    def inHandSal()
        puts "In hand salary: #{Company.inHandSal(@exp)}"
    end
end

emp2 = New_Employee.new("Emp1", 30, 6)
emp2.name()
emp2.age
emp2.experience
emp2.inHandSal