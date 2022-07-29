# # Ruby code for Time.strftime() method

# # loading library
# # require 'time'



# # # declaring time
# # b = Time.new()






# # # strftime form

# # puts "Time b strftime form : #{b.strftime("Is published on %m/%d/%Y")}\n\n"





# Date.new(2001,2,3)



# require 'date'
# # puts str =" "
# # puts Date.parse(Time.parse(str).utc.to_s)
# data = gets.chomp
# a = Date.new(data)
# puts "Time a to_date form : #{a.to_date}\n\n"


# date = gets.chomp
# a = Time.new(date)
# puts "Time a to_date form : #{a.to_date}\n\n"
require 'date'
a = gets
puts Date.strptime(a, '%d-%m-%Y') 

# puts a.to_date