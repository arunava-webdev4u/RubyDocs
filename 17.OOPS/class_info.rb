class Box
    # print class information
    def info
        puts "Type of self = #{self.type}"
        puts "Name of self = #{self.name}"
    end
end
box = Box.new()
box.info()