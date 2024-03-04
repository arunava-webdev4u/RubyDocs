#!/usr/bin/ruby

puts "\n-------- gets Statement --------\n"
puts "Enter a value :"
# val = gets
# puts val

puts "\n-------- putc Statement --------\n"
str = "Hello Ruby!"
putc str    # H

puts "\n-------- print Statement --------\n"
print "Hello World"
print "Good Morning"

puts "\n-------- open a file --------\n"
File.open('about.txt', 'w') do |f|
    f.puts "This is JavaTpoint"     # line1
    f.write "You are reading Ruby tutorial.\n"  # line2
    f << "Please visit our website.\n"  # line3
end

puts "\n-------- sysread method --------\n"
aFile = File.new("file1.txt", "r")
if (aFile)
    content = aFile.sysread(20) # reading the first 20 characters of the file
    puts content
else
    puts "Unable to open file!"
end

puts "\n-------- syswrite method --------\n"
aFile = File.new("output.txt", "r+")
if aFile
    aFile.syswrite("ABCDEF")
else
    puts "Unable to open file!"
end

puts "\n-------- rename method --------\n"
# File.rename("old.txt", "new.txt")

puts "\n-------- delete method --------\n"
# File.delete("deleteme.txt")

puts "\n-------- IO.readlines Method --------\n"
arr = IO.readlines("about.txt")
puts "line 1: #{arr[0]}"
puts "line 2: #{arr[1]}"
puts "line 3: #{arr[2]}"

puts "\n-------- IO.foreach Method --------\n"
IO.foreach("about.txt"){|block| puts block}

puts "\n-------- File Inquiries --------\n"
puts "File exist?"
puts File.open("about.txt") if File::exists?( "about.txt" )

puts "A file?"
puts File.file?( "about.txt" )

puts "A directory?"
puts File::directory?( "/usr/local/bin" ) # => true
# a file
puts File::directory?( "about.txt" ) # => false

puts "A readable?, writeable?, executable?"
puts File.readable?( "about.txt" )   # => true
puts File.writable?( "about.txt" )   # => true
puts File.executable?( "about.txt" ) # => false

puts "Size 0?"
puts File.zero?( "about.txt" )

puts "Size?"
puts File.size?( "about.txt" )

puts "Type?"
File::ftype( "about.txt" )

puts "When Created?"
File::ctime( "test.txt" )
File::mtime( "text.txt" )
File::atime( "text.txt" )