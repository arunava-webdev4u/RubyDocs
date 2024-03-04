#!/usr/bin/ruby

module Company
    BASIC = 25000
    def Company.basicSal()
        return BASIC
    end
    def Company.inHandSal(exp)
        sal = BASIC + BASIC*20/100 + BASIC*15/100 + BASIC*exp/100
        return sal
    end
    def Company.name
        puts "It's Persistent"
    end
end