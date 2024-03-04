#!/usr/bin/ruby

require_relative "company_details"

class New_Employee
    include Company
    def initialize(name, age, exp)
        @name = name
        @age = age
        @exp = exp
    end
    def basicSal
        puts "Basic Salary: #{Company::BASIC}"
    end
    def increaseSal
        # Company::BASIC = Company::BASIC+1000    # error
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

emp3 = New_Employee.new("Emp3", 30, 0)
emp3.name()
emp3.age
emp3.experience
emp3.inHandSal
emp3.basicSal
emp3.increaseSal    # err
emp3.basicSal