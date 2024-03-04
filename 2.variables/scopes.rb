class MyClass
    @@clsVar = "This is at class level" #class level
    @@clsVar2 #class level

    def func()
        # puts "#{clsVar}"    # error
        # puts @clsVar        # nil
        # puts @@clsVar       # correct output

        @@loc_ins = 99 #class level
        # puts "#{loc_ins}"   #error
        # puts @loc_ins       #nil
        # puts @@loc_ins      #correct

        loc_ins = 11 # block level
        puts "#{loc_ins}"   #correct: 11
        # puts @loc_ins       #nil
        puts @@loc_ins      #correct: 99
    end

    def func2 ()
        puts @@clsVar   # correct: initialized
        # puts @@clsVar2  # ERROR: uninitialized class variable
    end
end

obj = MyClass.new
# obj.func()
obj.func2()
