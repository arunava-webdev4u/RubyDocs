# Ruby: Date & Time

Ruby has Mainly three classes related to date and time in its documentation.
- Date
- DateTime
- Time
## Date
Ruby date provides two classes, Date and DateTime.

To understand the concept of date, first we need to understand some terms.

- **Calendar date**: The calendar date is a particular day within a calendar month within a year.
- **Ordinal date**: The ordinal date is a particular day of a calendar year identified by its ordinal number.
- **Week date**: The week date is a day identified by calendar week and day numbers. The first calendar week of the year is the one which includes first Thursday of that year.
- **Julian day number**: The julian day number is in elapsed day since noon on January 1, 4713 BCE.
- **Modified julian day number**: The modified julian day number is in elapsed day since midnight on November 17, 1858 CE.

The Date object is created with **::new, ::parse, ::today, ::jd, ::strptime**, etc.

All date objects are **immutable**, hence they can't modify themselves.
```ruby
require 'date'

puts Date.new(2017,4,3)     # 2017-04-03
puts Date.jd(2451877)       # 2000-11-28
puts Date.ordinal(2017,3)   # 2017-01-03
puts Date.commercial(2017,5,6)  # 2017-02-04
puts Date.parse('2017-02-03')   # 2017-02-03
puts Date.strptime('03-02-2017', '%d-%m-%Y') # 2017-02-03
puts Time.new(2017,10,8).to_date    # 2017-10-08
```

The Date object has various methods as shown in the below example.
```ruby
require 'date'

d = Date.parse('4th Mar 2017')
puts d.year     # 2017
puts d.mon      # 3
puts d.mday     # 4
puts d.wday     # 6
puts d += 1     # 2017-03-05
puts d.strftime('%a %d %b %Y')  # Sun 05 Mar 2017
```
## DateTime
Ruby DateTime is a **subclass of Date**.

It easily handles date, hour, minute, second and offset.

The DateTime object created with **DateTime.new, DateTime.ordinal, DateTime.parse, DateTime.jd, DateTime.commercial, DateTime.now**, etc.

```ruby
puts DateTime.new(2017,3,4,5,6,7)   # 2017-03-04T05:06:07+00:00
```
The last element of day, minute, second or hour can be fractional.

The DateTime object also has various methods as shown in the below example.
```ruby
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
```

## Time
The **Time class** represents dates and times in Ruby.

It is a thin layer over the system date and time functionality provided by the operating system.

The Time class treats **GMT** (Grenwich Mean Time) and **UTC** (Coordinated Universal Time) **equivalent**.

*This class may be unable on your system to represent dates before 1970 or after 2038.*
```ruby
time1 = Time.new
puts time1
puts "Current Time : " + time1.inspect

# Time.now is a synonym:
time2 = Time.now
puts time2
puts "Current Time : " + time2.inspect
```
Time.now & Time.new are synonym

## Creating a new Time Instance
A new Time instance can be created with ::new. This will use your current system's time.

While creating a new time instance, you need to pass **at least a year**. If only year is passed, then time will **default to January 1** of that year **at 00:00:00** with current system time zone.

```ruby
puts Time.new             # 2024-01-23 12:17:30 +0530
puts Time.new(2017, 3)    # 2017-03-01 00:00:00 +0530
puts Time.new(2017, 3, 4) # 2017-03-04 00:00:00 +0530
puts Time.new(2017, 3, 4, 6, 5, 5, "+05:00") # 2017-03-04 06:05:05 +0500
```

## Getting Components of a Date & Time (Methods)
```ruby
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
```

## Time.utc, Time.gm and Time.local Functions
Instead of using current system setting, you can also use GMT, local and UTC timezones.
```ruby
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
```
Get all the components in an array in the following format −
``[sec,min,hour,day,month,year,wday,yday,isdst,zone]``
```ruby
time = Time.new
values = time.to_a
p values
```
This array could be passed to Time.utc or Time.local functions to get different format of dates as follows −
```ruby
time = Time.new
values = time.to_a
puts Time.utc(*values)
```
Following is the way to get time represented internally as seconds since the (platform-dependent) epoch −
```ruby
# Returns number of seconds since epoch
time = Time.now.to_i  
puts time           # 1705994035
# Convert number of seconds into Time object.
puts Time.at(time)  # 2024-01-23 12:43:55 +0530

# Returns second since epoch which includes microseconds
time = Time.now.to_f
puts time           # 1705994035.197036

# Difference between future and past times in seconds
sec = Time.now - Time.new(2024, 1, 22)
puts "Diff in sec: #{sec}"
```

## Working with an instance of time
```ruby
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
```
