module Employeeleave

  def Employeeleave.choose()

    puts "Enter 1 for Earn Leave"
    puts "Enter 2 for Sick Leave"
    puts "Enter 3 for Casual Leave"
    puts "Enter 4 for to see Holiday's"

    choice = gets.chomp.to_i

    case choice
    when 1
      
      require 'date'
      
      puts "---------------------------** We provide 18 Earn leave in year **---------------------------"

      puts "Please Fill the details: "

      puts "Please enter name"
      name_emp = gets.chomp.to_s

      puts "Enter the number of leaves :"
      leave_take = gets.chomp.to_i
      
      puts "Enter the  date of leave start in this way (dd-mm-yyyy) :"
      start_date = gets
        Date.strptime(start_date, '%d-%m-%Y') 


      puts "Enter the End date of leave in this way (dd-mm-yyyy) : "
      end_date = gets
      Date.strptime(end_date, '%d-%m-%Y') 
        
        earn_leave =18
        if leave_take < earn_leave
      
        puts "Succusfully updated ! you take leave "
        left = earn_leave - leave_take
          puts "your left leaves leave: #{left}"
        else
          puts "you can't take leave more than 18 days"
        end  
      

    when 2
      
      require 'date'
      
      puts "---------------------------** We provide 5 Sick leave **---------------------------"

      puts "Please Fill the details: "

      puts "Please enter name"
        name_emp = gets.chomp.to_s

      puts "Enter the number of leaves :"
        leave_take = gets.chomp.to_i
      
      puts "Enter the  date of leave start in this way (dd-mm-yyyy) :"
        start_date = gets
        Date.strptime(start_date, '%d-%m-%Y') 


      puts "Enter the End date of leave in this way (dd-mm-yyyy) : "
        end_date = gets
        Date.strptime(end_date, '%d-%m-%Y') 
        
        sick_leave =18
        if leave_take <  sick_leave
      
        puts "Succusfully updated ! you take leave "
        rest_sl = SL - leave_take
          puts "your left leaves leave: #{rest_sl}"
        else
          puts "you can't take leave more than 18 days"
        end 
        
      when 3
          require 'date'
      
        puts "---------------------------** We provide 2 Casule leave **---------------------------"

        puts "Please Fill the details: "

        puts "Please enter name"
          name_emp = gets.chomp.to_s

        puts "Enter the number of leaves :"
          leave_take = gets.chomp.to_i
        
        puts "Enter the  date of leave start in this way (dd-mm-yyyy) :"
          start_date = gets
          Date.strptime(start_date, '%d-%m-%Y') 


        puts "Enter the End date of leave in this way (dd-mm-yyyy) : "
          end_date = gets
          Date.strptime(end_date, '%d-%m-%Y') 
          
          casul_leave = 2
          if leave_take < casul_leave
        
          puts "Succusfully updated ! you take leave "
          rest_sl = casul_leave - leave_take
            puts "your left leaves leave: #{rest_sl}"
          else
            puts "you can't take leave more than 18 days"
          end 
      
      when 4 
        puts "---------------------------- We provid 10 holiday leave ---------------------------- "
    
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

        
      else
        puts "Invalid do not take unnecessary j  !"
    end 
  end 
end