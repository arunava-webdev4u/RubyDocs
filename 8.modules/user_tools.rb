#!/usr/bin/ruby

module Tools
    def sayhi(name)
        puts "hello #{name}!"
    end
    def saybye(name)
        puts "bye bye #{name} :("
    end
    # def greet() # also works
    def greet
        puts "Welcome user"
    end
    def Tools.ask
        puts "Do you need something?"
    end
end

=begin
include Tools
Tools.sayhi("Arunava")
Tools.greet
Tools.ask
Tools.saybye("Arunava")
=end
