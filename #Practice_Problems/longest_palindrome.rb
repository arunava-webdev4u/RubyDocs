#!/usr/bin/ruby

#! Longest palindrome in string
print "Enter a string: "
str = gets.strip
puts "Input string: #{str}"


def palindrome (str)
    x = str.length-1
    for i in 0...str.length/2
        if str[i] != str[x]
            return false
        end
        x = x-1
    end
    return true
end

def longest_palindrome(str)
    require 'set'
    max = 0
    pal = ""
    set = Set.new
    for i in 0...str.length
        for j in i...str.length
            sub = str[i..j]
            if set.include?sub
                next
            elsif palindrome(sub)
                if max < sub.length
                    max = sub.length
                    pal = sub
                end
                set << sub
            end
        end
    end
    puts set
    return pal
end

puts longest_palindrome(str)