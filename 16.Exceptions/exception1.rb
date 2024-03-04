puts "\n-------- Exception class: raise --------\n"
def raise_exception
    puts 'I am before the raise.'
    raise 'oops! An error has occured'
    puts 'I am after the raise'
end
# raise_exception()

puts "\n-------- Exception Handling: rescue --------\n"
def raise_and_rescue
    begin
        puts 'Before the raise.'
        raise 'An error occured.'
        puts 'After the raise.'
    rescue
        puts 'Code rescued.'
    end
    puts 'After the begin block.'
end
raise_and_rescue

puts "\n\n"
def exp1
    begin
        puts "first line"
        rescue ScriptError
            puts "second line"
        rescue NoMemoryError
            puts "Third line"
        else
            puts "Other lines...."
    end
end
# exp1
# first line
# Other lines....

puts "\n\n"
def exp2
    begin
        puts "first line"
        raise "Oops"
        rescue ScriptError
            puts "second line"
        rescue NoMemoryError
            puts "Third line"
        else
            puts "Other lines...."
    end
end
# exp2
# first line
# 16.Exceptions/exception1.rb:25:in `<main>': Oops (RuntimeError)

puts "\n-------- Exception Object --------\n"
begin
    raise 'an exception'
    rescue StandardError => e
    puts "Exception Class: #{ e.class.name }"   # RuntimeError
    puts "Exception Message: #{ e.message }"    # an exception
    puts "Exception Backtrace: #{ e.backtrace }"# ["16.Exceptions/exception1.rb:57:in `<main>'"]
end

puts "\n-------- Using retry Statement --------\n"
y = "alreadyExist"
begin
    x = Dir.mkdir(y)
    if x
        puts "Directory created"
    end
rescue
    y = "newDir"
    retry
end
# First it will create 'alreadyExist' dir, but if we run
# it again, it will throw an exception, and go to rescue
# block, then it will retry from begin block, and this time
# it will create the folder 'newDir'

puts "\n-------- Using ensure Statement --------\n"
begin
    raise 'Just an Exception'
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
ensure
    puts "The ensure code will always run"
end
