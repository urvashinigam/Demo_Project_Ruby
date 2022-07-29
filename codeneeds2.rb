

# puts " -ˏˋ. Add Employee ˊˎ- "
# puts "###### Enter 1 for add details #######"

# number = gets.chomp.to_i

# case number

# when 1
#   puts "===================================================================="
#   puts "ENTER DETAILS ✍️ "
#   puts "===================================================================="

#   puts "Enter name "
#   name = gets

#   puts "Enter age"
#   age = gets
  
#   puts "✉ Enter e-mail id ✉"
#   email = gets


#   puts "⌨ Enter address⌨"
#   address = gets
# if (name == "yuvraj"  && email == )

# else
# puts "Not Valid kindly, choose 1 or 2 option"

# end




class Employee 
  attr_length : length_take
  def initialize(*list)
    @list = list
    @length_take = @list
  end


  def get_choic
    
    @list.each_with_index do  |items , index| 
    puts " #{index+1} . #{items} "
  end


  puts "enter any choice "
  user_choice = gets.chomp.to_i
  
  return user_choice

  end
  
 obj = Employee.new("1stcase","2ndcase")
 while((choice = obj.get_choic) != obj.length_take) 

  case choice
  when 1
    puts "1 for 1stcase"

    when 2
      puts "2 for 2ndcase"

    end
 end

end

end