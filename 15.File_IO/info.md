# Ruby: File I/O

- Ruby I/O is a way to interact with your system.
- Data is sent in the form of bytes/characters.
- All the I/O methods are derived from the class IO.
- It provides all the basic methods, such as read, write, gets, puts, readline, getc, and printf.
- IO has a subclass as File class which allows reading and writing files in Ruby.

## Common modes in I/O port
- **"r": read-only** mode is the default mode starts at beginning of file.
- **"r+": read-write** mode, starts at beginning of file.
- **"w": write-only** mode, either creates a new file or truncates an existing file for writing.
- **"w+": read-write** mode, either creates a new file or truncates an existing file for reading and writing.
- **"a": write-only** mode, if file exists it will append the file othrwise a new file will be created for writing only.
- **"a+": read and write** mode, if file exists it will append the file othrwise a new file will be created for writing and reading.

## IO Console
The IO console provides different methods to interact with console. The class IO provides following basic methods:
```
IO::console
IO#raw#raw!
IO#cooked
IO#cooked!
IO#getch
IO#echo=
IO#echo?
IO#noecho
IO#winsize
IO#winsize=
IO#iflush
IO#ioflush
IO#oflush
```

## The gets Statement
The gets statement can be used to take any input from the user from standard screen called STDIN.
```ruby
puts "Enter a value :"
val = gets
puts val
```
This code will prompt the user to enter a value, which will be stored in a variable val and finally will be printed on STDOUT.

## The putc Statement
Unlike the puts statement, which outputs the entire string onto the screen, the putc statement can be used to output one character at a time.
```ruby
str = "Hello Ruby!"
putc str    # H
```

## The print Statement
The print statement is similar to the puts statement.

The only difference is that the puts statement goes to the **next line** after printing the contents, whereas with the print statement the cursor is positioned on the **same line**.
```ruby
print "Hello World"
print "Good Morning"
```
Output: ``Hello WorldGood Morning``

## Ruby opening a file
There are two methods to open a file in Ruby:

- **File.new method** : Using this method a new file can be created for reading, writing or both.
- **File.open method** : Using this method a new file object is created. That file object is assigned to a file.

Difference between both the methods is that ***File.open method can be associated with a block while File.new method can't.***
```
f = File.new("fileName.rb")
# Or,
File.open("fileName.rb", "mode") do |f|
```
**Example**
```ruby
File.open('about.txt', 'w') do |f|
    f.puts "This is JavaTpoint"     # line1
    f.write "You are reading Ruby tutorial.\n"  # line2
    f << "Please visit our website.\n"  # line3
end
```

## Ruby reading a file
There are three different methods to read a file.
- To return a single line, following syntax is used.
    ```
    f.gets  
    code... 
    ```
- To return the whole file after the current position, following syntax is used.
    ```
    f.read  
    code... 
    ```
- To return file as an array of lines, following syntax is used.
    ```
    f.readlines  
    [code...]
    ```

## The sysread Method
You can open the file in any of the modes when using the method sysread.
```ruby
aFile = File.new("file1.txt", "r")
if (aFile)
    content = aFile.sysread(20) # reading the first 20 characters of the file
    puts content
else
    puts "Unable to open file!"
end
```
This statement will output the first 20 characters of the file. The file pointer will now be placed at the 21st character in the file.

## The syswrite Method
You need to open the file in write mode when using the method syswrite.
```ruby
aFile = File.new("output.txt", "r+")
if aFile
    aFile.syswrite("ABCDEF")
else
    puts "Unable to open file!"
end
```

## Ruby renaming and deleting a file
Ruby files are renamed using rename method and deleted using delete mehtod.

**Rename:**
```ruby
File.rename("old.txt", "new.txt")
```
**Delete:**
```ruby
File.delete("deleteme.txt")
```

## The each_byte Method


## The IO.readlines Method
The class File is a subclass of the class IO.

This method returns the contents of the file line by line.
```ruby
arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]
```

## The IO.foreach Method
This method also returns output line by line.

The difference between the method foreach and the method readlines is that the method **foreach** is **associated with a block**.

However, unlike the method **readlines**, the method foreach **does not return an array**.
```ruby
IO.foreach("input.txt"){|block| puts block}
```
This code will pass the contents of the file test line by line to the variable block, and then the output will be displayed on the screen.

## File Modes and Ownership
Use the chmod method with a mask to change the mode or permissions/access list of a file −
```ruby
file = File.new( "about.txt", "w" )
file.chmod( 0755 )
```
(List of different mask)[https://www.tutorialspoint.com/ruby/ruby_input_output.htm]

## File Inquiries
The following command tests whether a file exists before opening it −
```ruby
File.open("about.txt") if File::exists?( "about.txt" )
```
The following command inquire whether the file is really a file −
```ruby
# This returns either true or false
File.file?( "about.txt" )
```
The following command finds out if the given file name is a directory −
```ruby
# a directory
File::directory?( "/usr/local/bin" ) # => true
# a file
File::directory?( "about.txt" ) # => false
```
The following command finds whether the file is readable, writable or executable −
```ruby
File.readable?( "about.txt" )   # => true
File.writable?( "about.txt" )   # => true
File.executable?( "about.txt" ) # => false
```
The following command finds whether the file has zero size or not −
```ruby
File.zero?( "about.txt" )
```
The following command returns size of the file −
```ruby
File.size?( "about.txt" )
```
The following command can be used to find out a type of file −
```ruby
File::ftype( "about.txt" )
```
The ftype method identifies the type of the file by returning one of the following − file, directory, characterSpecial, blockSpecial, fifo, link, socket, or unknown.

The following command can be used to find when a file was created, modified, or last accessed −
```ruby
File::ctime( "test.txt" )
File::mtime( "text.txt" )
File::atime( "text.txt" )
```

## Directories in Ruby
Whereas the File class handles files, directories are handled with the Dir class.

### Navigating Through Directories
Changes the current directory to /usr/bin -
```ruby
Dir.chdir("/usr/bin")
```
Find out what the current directory -
```ruby
puts Dir.pwd
```
get a list of the files and directories within a specific directory -
```ruby
puts Dir.entries("/usr/bin").join(' ')
```
Dir.foreach provides the same feature as Dir.entries-
```ruby
Dir.foreach("/usr/bin") do |entry|
    puts entry
end
```
An even more concise way of getting directory listings is by using Dir's class array method −
```ruby
Dir["/usr/bin/*"]
```

### Creating a Directory
```ruby
Dir.mkdir("mynewdir")
```
You can also set permissions on a new directory
```ruby
Dir.mkdir( "mynewdir", 755 )
```

### Deleting a Directory
The **Dir.delete** can be used to delete a directory.

The **Dir.unlink** and **Dir.rmdir** performs exactly the same function and are provided for convenience.
```ruby
Dir.delete("testdir")
```

### Creating Files & Temporary Directories
Temporary files are those that might be created briefly during a program's execution but aren't a permanent store of information.

Dir.tmpdir provides the path to the temporary directory on the current system, although the method is not available by default. To make Dir.tmpdir available it's necessary to use require 'tmpdir'.

You can use Dir.tmpdir with File.join to create a platform-independent temporary file −
```ruby
require 'tmpdir'
    tempfilename = File.join(Dir.tmpdir, "tingtong")
    tempfile = File.new(tempfilename, "w")
    tempfile.puts "This is a temporary file"
    tempfile.close
    File.delete(tempfilename)
```
This code creates a temporary file, writes data to it, and deletes it.

Ruby's standard library also includes a library called Tempfile that can create temporary files for you −
```ruby
require 'tempfile'
   f = Tempfile.new('tingtong')
   f.puts "Hello"
   puts f.path
   f.close
```

## Built-in Functions

(File Class and Methods)[https://www.tutorialspoint.com/ruby/ruby_file_methods.htm]

(Dir Class and Methods)[https://www.tutorialspoint.com/ruby/ruby_dir_methods.htm]

