require 'byebug'
byebug
# answer = ""


while (!answer.eql?("Y") || !answer.eql?("N"))

    puts "Do you wish to continue? ('Y' or 'N')"
    answer = gets.chomp
    if (answer == 'Y' || answer == 'N')
      puts 'valid '
    
    end
    
  end 