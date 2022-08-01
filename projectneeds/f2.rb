class  Login

 def log_in_functionality()
  puts " -ˏˋ. Leave Managment System ˊˎ-".center(130)

puts "*****************************************************************************************************************************************"

  puts     "   ╔═══════☆.✵.☆═══════╗ ".center(130)
      puts ' Enter 1 for log in HR '   .center(130)  
     puts ' Enter 2 for log in Employee '.center(130)
  puts     "   ╚═══════☆.✵.☆═══════╝ ".center(130)
puts "*****************************************************************************************************************************************"

number = gets.chomp.to_i

case number

when 1

  puts "==========================================================================================================================================="
  puts "ENTER DETAILS ✍️ ".center(130)
  puts "============================================================================================================================================"
  
  puts "✉ Enter e-mail id ✉"
  email = gets
    puts "⌨ Enter password ⌨"
  password = gets

  if (email =='HR@shriffle' && password == '12@12' )
       puts "Welcome to log in Succusfully as HR ! 😃"
   else
      puts "Invalid log in..! ⚠"
  end


when 2
  puts "===================================================================="
  puts "ENTER DETAILS ✍️ "
  puts "===================================================================="

  puts "✉ Enter e-mail id ✉"
  email = gets.chomp.to_s

  puts "⌨ Enter password ⌨"
  password = gets.chomp.to_s
  if (email == 'Employee@gmail.com' && password =='123' )
    puts "Welcome to log in Succusfully as Employee! 😄"
  else
    puts "Invalid log in..! ⚠"
  end

  else
    puts "Not Valid kindly, choose 1 or 2 option"
  end 
 end
end
obj = Login.new
obj.log_in_functionality



