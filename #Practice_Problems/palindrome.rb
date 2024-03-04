#!/usr/bin/ruby

#! Check if a string is palindrome or not
print "Enter a string: "
inp = gets.strip()


#! Method 1: Using reverse method
isPalindrome = inp == inp.reverse()
puts "\nMethod 1: Using reverse method:-"
puts "'#{inp}' is #{(isPalindrome)? "is a Palindrome" : "is NOT a Palindrome"}"


#! Method 2: Using a loop
def palindrome(str)
    x = str.length-1
    for i in 0...str.length/2
        if (str[i] != str[x])
            return false
        end
        x = x-1
    end
    return true
end
isPalindrome = palindrome(inp)
puts "\nMethod 2: Using a loop:-"
puts "'#{inp}' is #{(isPalindrome)? "is a Palindrome" : "is NOT a Palindrome"}"