# Ruby: loops

## while loop
```ruby
while i < num  do
    puts("while = #{i}")
    i +=1
end
x = 5
while x >= 0    
    puts("while = #{x}")  
    x -=1   
end
```

## do while loop
```ruby
ans = 0
loop do
    puts "Checking for a match"   
    if ans == 5
        break   
    end
    ans += 1
end
```

## while modifier
```ruby
i = 0
begin
    puts("Inside the loop i = #{i}" )
    i += 1
end while i < 5
```

## for loop
for loop is used if a program has fixed number of iterations.
```ruby
a = 10
for i in 1..a do   
    puts i   
end
```
## loop using array
```ruby
x = ["Blue", "Red", "Green", "Yellow", "White"]   
for i in x do   
    puts i   
end
```

## each, for array
```ruby
x.each do |user|
    puts user
end
```

## until loop
```ruby
i = 1
until i == 10
    puts i * 10
    i += 1
end
```

## until modifier
```ruby
i = 0
begin
    puts "#{i}"
    i += 1
end until i > 5

# or

puth "hello" until false    # infinite loop
```

## brake statement
Terminates the most internal loop.
```ruby
for i in (1..5) do
    if (i > 2)
        break
    end
    puts i
end
```
    Output: 1 2

## next statement
Jumps to the next iteration of the most internal loop.
```ruby
for i in (1..5) do
    if (i < 2) then
        next
    end
    puts i
end
```
    Output: 2 3 4 5

## redo statement
Restarts this iteration of the most internal loop, **without checking loop condition**.
```ruby
for i in (1..5) do
    if (i < 2) then
        puts i
        redo
    end
end
```
    Output: 1 1 1 1 1 .......... infinite loop

## retry statement
Ruby retry statement is used to repeat the whole loop iteration from the start.

If retry appears in rescue clause of begin expression, restart from the beginning of the begin body.
```
begin
   do_something # exception raised
rescue
   # handles error
   retry  # restart from beginning
end
```
If retry appears in the iterator, the block, or the body of the for expression, **restarts the invocation** of the **iterator call**. Arguments to the iterator is re-evaluated.
```
for i in 1..5
   retry if some_condition # restart from i == 1
end
```
```ruby
for i in 0..5
    retry if i > 2
    puts "Value of local variable is #{i}"
end
```
**Output:**
```
Value of local variable is 1
Value of local variable is 2
Value of local variable is 1
Value of local variable is 2
.............
......infinite loop
```



