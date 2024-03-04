module A
    def talk()
        puts "Talking..."
    end
end

module B
    def walk()
        puts "Walking..."
    end
    def sleep ()
        puts "Sleeping..."
    end
end

class Sample
include A
include B
    def play()
        puts "Playing..."
    end
end

obj = Sample.new()
obj.talk()
obj.walk()
obj.sleep()
obj.play()
