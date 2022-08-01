

require 'date'
module Login
 
  def hrlogin
      puts "===================================================================="
      puts "Welcome to login as HR please enter details ✍️ "
      puts "===================================================================="
      
      puts "✉ Enter e-mail id ✉"
      email = gets
      puts "⌨ Enter password ⌨"
      password = gets
    
      if (email =='HR@shriffle' && password == '12@12' )
      puts "Welcome to log in Succusfully as HR ! 😃"
      else
      puts "Invalid log in..! ⚠"
     end
  end

  def employlog

    puts "===================================================================="
    puts "Welcome to login as Employee please enter details ✍️ ✍️ "
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
  end

def log_in_functionality
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
      hrlogin
   when 2
      employlog
   else
      puts 'Invalid do not take unnecessary   !'
   end
end
end

module Employeeleave
  def earn_leaves
    puts '---------------------------** We provide 18 Earn leave in year **---------------------------'
    puts 'Please Fill the details: '

    puts 'Please enter name'
    name_emp = gets.chomp.to_s

    puts 'Enter the number of leaves :'
    leave_take = gets.chomp.to_i

    puts 'Enter the  date of leave start in this way (dd-mm-yyyy) :'
    
    start_date = gets
    Date.strptime(start_date, '%d-%m-%Y')

    puts 'Enter the End date of leave in this way (dd-mm-yyyy) : '
    end_date = gets
    Date.strptime(end_date, '%d-%m-%Y')

    earn_leave = 18
    if leave_take < earn_leave

      puts 'Succusfully updated ! you take leave '
      left = earn_leave - leave_take
      puts "your left leaves leave: #{left}"
    else
      puts "you can't take leave more than 18 days"
    end
  end

  def sick_leves
    puts '---------------------------** We provide 5 Sick leave **---------------------------'

    puts 'Please Fill the details: '

    puts 'Please enter name'
    name_emp = gets.chomp.to_s

    puts 'Enter the number of leaves :'
    leave_take = gets.chomp.to_i

    puts 'Enter the  date of leave start in this way (dd-mm-yyyy) :'
    start_date = gets
    Date.strptime(start_date, '%d-%m-%Y')

    puts 'Enter the End date of leave in this way (dd-mm-yyyy) : '
    end_date = gets
    Date.strptime(end_date, '%d-%m-%Y')

    sick_leave = 18
    if leave_take < sick_leave

      puts 'Succusfully updated ! you take leave '
      rest_sl = SL - leave_take
      puts "your left leaves leave: #{rest_sl}"
    else
      puts "you can't take leave more than 18 days"
    end
  end

  def casul_leves
    puts '---------------------------** We provide 2 Casule leave **---------------------------'

    puts 'Please Fill the details: '

    puts 'Please enter name'
    name_emp = gets.chomp.to_s

    puts 'Enter the number of leaves :'
    leave_take = gets.chomp.to_i

    puts 'Enter the  date of leave start in this way (dd-mm-yyyy) :'
    start_date = gets
    Date.strptime(start_date, '%d-%m-%Y')

    puts 'Enter the End date of leave in this way (dd-mm-yyyy) : '
    end_date = gets
    Date.strptime(end_date, '%d-%m-%Y')

    casul_leave = 2
    if leave_take < casul_leave

      puts 'Succusfully updated ! you take leave '
      rest_sl = casul_leave - leave_take
      puts "your left leaves leave: #{rest_sl}"
    else
      puts "you can't take leave more than 18 days"
    end
  end

  def holidays
    puts '---------------------------- We provid 10 holiday leave ---------------------------- '

    puts "
   S.No.  Date     Day            Name of Holiday
    1.    1 st    January       Saturday New Year
    2.    26      January       Wednesday Republic Day
    3.    22      Tuesday       Rang Panchami
    4.    15      August        Monday Independence Day
    5.    11      Thursday      Raksha Bandhan
    6.    02      Sunday        Gandhi Jayanti
    7.    5       October       Wednesday Dusshera
    8.    24      October       Monday Deepawali
    9.    25      Tuesday       Deepawali
   10.    25      December      Sunday Christmas "
  end

  def again
    puts 'To continue enter 1 or to exit press 2: '
    cancel = gets.chomp.to_i
    if cancel.eql? 1
      choose
    elsif cancel.eql? 2
      exit!
    end
  end

  def choose
    puts 'Enter 1 for Earn Leave'
    puts 'Enter 2 for Sick Leave'
    puts 'Enter 3 for Casual Leave'
    puts "Enter 4 for to see Holiday's"

    choice = gets.chomp.to_i
    case choice
    when 1
      earn_leaves
      again
    when 2
      sick_leves
      again
    when 3
      casul_leves
      again
    when 4
      holidays
      again
    else
      puts 'Invalid do not take unnecessary  !'
      again
    end
  end
end

class Humanresourse
  

  include Login
  include Employeeleave
  @name ;
  @age ;
  @contact  ;
  @email ;
  @address
  @occupation;
  
  def initialize(name,age,contact,email,address,occupation)
    @name = name;
    @age = age;
    @contact  = contact;
    @email = email ;
    @address = address ;
    @occupation = occupation;
   
  end

  def add_details
   hash_arr = [];

   hash1 = {name: @name,  age: @age , contact: @contact  , email: @email  ,  address: @address  , occupation: @occupation }
   hash_arr.push(hash1)
   hash_arr.each do |values|
     puts "name :" + values[:name]
     
     puts "age: #{values[:age]}"
     puts "contact no : #{values[:contact]}"
     puts "email : #{values[:email]}"
     puts "address : #{values[:address]}"
     puts "occupation : #{values[:occupation]}"
     puts "succusfully add data "
  end

  def delete
    hash_arr = [];

    hash_arr.delete_if { |h| h[name] == "uv" }
    hash_arr.each { |i| puts i}
  end
end
end

puts "Enter name :"
name = gets.chomp.to_s

puts "Enter age :"
age = gets.chomp.to_i

puts "Enter contact :"
contact = gets.chomp.to_i

puts "Enter email :"
email = gets.chomp.to_s

puts "Enter address :"
address = gets.chomp.to_s

puts "Enter occupation : "
occupation = gets.chomp.to_s


obj = Humanresourse.new(name,age,contact,email,address,occupation)


obj.log_in_functionality

obj.add_details
obj.delete

obj.choose
