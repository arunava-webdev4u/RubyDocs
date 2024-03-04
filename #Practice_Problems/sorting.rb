#!/usr/bin/ruby

#! Sorting

a1 = [3, 5, 1, 10, 6, 26, 10, 2, 4, 5, 0]
a2 = [3, '5', 1, '10', 6, '26', 10, 2, '4', 5, 0]
a3 = ['hello', "foo", "array", "arRay", "bar", "Ruby", 'ruby']
as = %w(hello foo array arRay bar Ruby ruby)    # another way to create str arrya (same as a3)

puts "Input array 1: #{a1}"
puts "Input array 2: #{a2}"
puts "Input array 2: #{a3}"



#! Method 1: Using 'sort' method
puts "\nMethod 1: Using 'sort' method:-"

arr1 = a1.sort      # returns a new sorted array
puts "Sorted array 1: #{arr1}"

# arr2 = a2.sort    # error: comparison of Integer with String failed
# puts "Sorted array 2: #{arr2}"

arr3 = a3.sort      # compared based on the characters
puts "Sorted array 3: #{arr3}"



#! Method 2: Using 'sort!' method (inplace)
puts "\nMethod 2: Using 'sort!' method (inplace):-"

arr1 = a1
arr1.sort!   # arr1 is sorted in place
puts "Sorted array 1: #{arr1}"

arr2 = a2
# arr2.sort!   # error: comparison of Integer with String failed
# puts "Sorted array 2: #{arr2}"

arr3 = a3
arr3.sort!   # arr3 is sorted in place
puts "Sorted array 3: #{arr3}"



#! Method 3: Using 'sort_by'
#* This method allows you to sort the data of an array according to specific requirements.
puts "\nMethod 3: Using 'sort_by':-"

arr1 = a1.sort_by { |word| word.to_s }      # sort normally
puts "Sorted array 1: #{arr1}"
arr1 = a1.sort_by { |word| word.to_s.length }
puts "Sorted array 1 (by length): #{arr1}"

arr2 = a2.sort_by { |word| word.to_s }   # sort normally, sort an array with numbers and strings both
puts "Sorted array 2: #{arr2}"
arr2 = a2.sort_by { |word| word.to_s.length }   # sort an array with numbers and strings both
puts "Sorted array 2 (by length): #{arr2}"

arr3 = a3.sort_by {  }      # sort normally
puts "Sorted array 3: #{arr3}"
# arr3 = a3.sort_by(&:length)
# or
arr3 = a3.sort_by { |word| word.length }
puts "Sorted array 3 (by length): #{arr3}"



#! Method 4: in reverse order
puts "\nMethod 4: in reverse order:-"
arr = as.sort_by { |word| -word.length }
puts "Sorted array in reverse: #{arr}"



#! Method 5: Sort alphanumeric string
puts "\nMethod 5: Sort alphanumeric string:-"
a = %w(10ruby 5foo 2bar 10Ruby 15sort)
puts "Input array: #{a}"

arr = a.sort
puts "Sorted array: #{arr}"

a.sort!     # sort in place
puts "Sorted array (in place): #{a}"



#! Method 6: Sort hash
puts "\nMethod 6: Sort hash:-"
hash = {"scaler" => 2, "academy" => 10, "aCademy" => 100, "interviewbit" => 21}
puts "Input hash: #{hash}"

sorted_hash = hash.sort_by { |key, value| key }     # sort by key
puts "Sorted by key: #{sorted_hash}"

sorted_hash = hash.sort_by { |key, value| value }     # sort by value
puts "Sorted by value: #{sorted_hash}"



#! Method 7: Sort with multiple values
puts "\nMethod 7: Sort hash with multiple values:-"
data = [
    { name: "Rohit", age: 32, "team": "MI"},
    { name: "Virat", age: 32, "team": "RCB"},
    { name: "Shubman", age: 23, "team": "GT"},
    { name: "Ishan", age: 23, "team": "MI"},
    { name: "Surya", age: 32, "team": "MI"},
]
puts "Input data:"
puts data

sorted_data = data.sort_by { |person| person[:team] }
puts "\nSorted data by team:"
puts sorted_data

sorted_data = data.sort_by { |person| [person[:age]] }
puts "\nSorted data by age:"
puts sorted_data

#* This sorts the array in ascending order depending on the first attribute, then the second attribute, and so on until there's no tie or all conditions has been checked.
sorted_data = data.sort_by { |person| [person[:age], person[:team], person[:name]] }
puts "\nSorted data*:"
puts sorted_data