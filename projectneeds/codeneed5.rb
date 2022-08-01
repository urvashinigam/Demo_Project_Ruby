require 'byebug'
# until ["Y","N"].include? answer

#     puts "Do you wish to continue? ('Y' or 'N')"

#     answer = gets.chomp.upcase

#     if (answer == 'y' || answer == 'n')
#       puts 'not valid '
#     end
# end

# loop do
  answer = gets.chomp
  byebug

  if (answer == 'Y'||answer == 'N')
    puts "Valid"
  else
    puts "Not Valid"
  end
  # break if answer == "Z"
# end