
module Login
  def Login.log_in_functionality()
puts " -ˏˋ. Leave Managment System ˊˎ-"

puts     "   ╔═══════☆.✵.☆═══════╗ "
    puts ' Enter 1 for log in HR '
    puts ' Enter 2 for log in Employee '
puts     "   ╚═══════☆.✵.☆═══════╝ "

puts "********************************************************************"
number = gets.chomp.to_i

case number

when 1

  def hrlogin
  puts "===================================================================="
  puts "ENTER DETAILS ✍️ "
  puts "===================================================================="
  
  puts "✉ Enter e-mail id ✉"
  email = gets
    puts "⌨ Enter password ⌨"
  password = gets

  raise if (email =='HR@shriffle' && password == '12@12' )
  puts "Welcome to log in Succusfully as HR ! 😃"

 else
  puts "Invalid log in..! ⚠"
 end
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





