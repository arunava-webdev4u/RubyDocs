#!/usr/bin/ruby

require 'date'

puts "-------- Date class --------"
puts Date.new(2017,4,3)
puts Date.jd(2451877)
puts Date.ordinal(2017,3)         
puts Date.commercial(2017,5,6)
puts Date.parse('2017-02-03')
puts Date.strptime('03-02-2017', '%d-%m-%Y')
puts Time.new(2017,10,8).to_date


puts "-------- Date methods --------"
d = Date.parse('4th Mar 2017')
puts d.year     # 2017
puts d.mon      # 3
puts d.mday     # 4
puts d.wday     # 6
puts d += 1     # 2017-03-05
puts d.strftime('%a %d %b %Y')  # Sun 05 Mar 2017

puts "-------- DateTime Subclass --------"
puts DateTime.new(2017,3,4,5,6,7)   # 2017-03-04T05:06:07+00:00

puts "-------- DateTime methods --------"
# d = DateTime.parse('4th Mar 2017 02:37:05+05:40') #or
d = DateTime.parse('2017-03-04T05:06:07+00:00')

puts d.hour     # 5
puts d.min      # 6
puts d.sec      # 7
puts d.offset   # 0/1
puts d.zone     # +00:00
puts d += Rational('1.0')       # 2017-03-05T05:06:07+00:00
puts d = d.new_offset('+05:00') # 2017-03-05T10:06:07+05:00
puts d.strftime('%I:%M:%S %p')  # 10:06:07 AM
puts d > DateTime.new(2000)     # true

puts "-------- Time Class --------"
time1 = Time.new
puts time1
puts "Current Time : " + time1.inspect

# Time.now is a synonym:
time2 = Time.now
puts time2
puts "Current Time : " + time2.inspect

puts "-------- Time Class: new Time Instance --------"
puts Time.new             # 2024-01-23 12:17:30 +0530
puts Time.new(2017, 3)    # 2017-03-01 00:00:00 +0530
puts Time.new(2017, 3, 4) # 2017-03-04 00:00:00 +0530
puts Time.new(2017, 3, 4, 6, 5, 5, "+05:00") # 2017-03-04 06:05:05 +0500

puts "-------- Time Class: components (methods) --------"
time = Time.new

puts "Current Time : " + time.inspect
puts time.year    # => Year of the date: 2024
puts time.month   # => Month of the date (1 to 12): 1
puts time.day     # => Day of the date (1 to 31 ): 23
puts time.wday    # => 0: Day of week: 0 is Sunday: 2 (Tuesday)
puts time.yday    # => 365: Day of year: 23
puts time.hour    # => 0-23: 24-hour clock: 12
puts time.min     # => 0-59: 23
puts time.sec     # => 0-59: 40
puts time.usec    # => 999999: microseconds: 240954
puts time.zone    # => "UTC": timezone name: IST

puts "-------- Time.utc, Time.gm and Time.local Functions --------"
# July 8, 2008
t = Time.local(2008, 7, 8)
puts t

# July 8, 2008, 09:10am, local time
t = Time.local(2008, 7, 8, 9, 10)
puts t

# July 8, 2008, 09:10 UTC
t = Time.utc(2008, 7, 8, 9, 10)
puts t

# July 8, 2008, 09:10:11 GMT (same as UTC)
t = Time.gm(2008, 7, 8, 9, 10, 11)
puts t

puts "-------- Get components in an array --------"
time = Time.new
values = time.to_a
p values

time = Time.new
values = time.to_a
puts Time.utc(*values)

# Returns number of seconds since epoch
time = Time.now.to_i  
puts time
# Convert number of seconds into Time object.
puts Time.at(time)

# Returns second since epoch which includes microseconds
time = Time.now.to_f
puts time

# Difference between future and past times in seconds
sec = Time.now - Time.new(2024, 1, 22)
puts "Diff in sec: #{sec}"

puts "-------- Working with an instance of time --------"
t = Time.new(1991, 07, 4, 9, 15, 33, "+09:00")
puts t
puts t.friday? # => false
puts t.year # => 1993
puts t.dst? # => false
puts t + (60*60*24*365) #=> 1992-07-03 09:15:33 +0900
puts t.to_i #=> 730522800

t1 = Time.new(2017)
t2 = Time.new(2015)

puts t1 == t2 #=> false
puts t1 == t1 #=> true
puts t1 <  t2 #=> false
puts t1 >  t2 #=> true

puts Time.new(2010,10,31).between?(t1, t2) #=> true
