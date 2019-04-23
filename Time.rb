#The Time class represents dates and times in Ruby.

# current time
t = Time.now # t = Time.new !correct! 
puts "The Time Nos is : #{t}"

puts "The Now Year is : #{t.year}" 
puts "The Now Month is : #{t.month}" 
puts "The Now Day is : #{t.day}" 

# custom date
t = Time.new(1988, 6, 10)

# day of week: 0 is Sunday
puts t.wday

# day of year
puts t.yday