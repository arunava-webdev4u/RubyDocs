class MyClass
  def basic_method
    puts "This is a basic method"
  end

  def method_missing(method_name, *args, &block)
    puts "Method '#{method_name}' is missing!"
  end
end

obj = MyClass.new
obj.basic_method
obj.some_method # This method doesn't exist
