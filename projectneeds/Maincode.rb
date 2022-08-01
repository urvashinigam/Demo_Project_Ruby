module Person
    
  def userDetails(name,email,mobile,age,address,profile,password)
      @EL=18;
      @SL=7;
      @CL=7;
      @HL=10;    
      File.write("log.txt", [name,email,mobile,age,address,profile,password,@EL,@SL,@CL,@HL], mode: "a")    
  end
  def viewUser
      puts File.foreach("log.txt") { |line| puts line }
  end
end


puts "Press 1 to Log In as HR";
puts "Press 2 to Log In as EMPLOYEE";
puts "Press 3 to Create new Log in";

number=gets.chomp.to_i;

case number
when 1
  puts "Please Enter Your Email And Password";

  email =gets.chomp;
  password =gets.chomp;
  puts email + password;
  if(email=="hr@gmail.com" && password=="12345")

      puts "Hello Mr. #{email} You are successfully logged in as HR";
      puts "Press 1 to see Employee details";

      option=gets.chomp.to_i;
      case option
          when 1
              viewDetails=Person.new;
              viewDetails.viewUser;
          else
              puts "Please Select an option";
          end    
  else
      puts "Invalid HR Email Or Password Please Re-enter";
  end
  
when 2
  puts "Please Enter Your Email And Password";
  name =gets.chomp;
  password =gets.chomp;
  i=File.size("log.txt");
  puts i;
  

      if(name==File.read("log.txt").split[i+1])
          puts "Hello Mr. #{name} You are successfully logged in as Employee";
      else
          puts "Invalid Employee Email Or Password Please Re-enter";
      end    

  

when 3
  puts "Please Fill the details: "
  puts "Please Enter Your Name";
  name=gets.chomp;
  puts "Please Enter Your Email";
  email=gets.chomp;
  puts "Please Enter Your Mobile";
  mobile=gets.chomp;
  puts "Please Enter Your Age";
  age=gets.chomp;
  puts "Please Enter Your Address";
  address=gets.chomp;
  puts "Please Enter Your Profile";
  profile=gets.chomp;
  puts "Please Enter Your Password";
  password=gets.chomp;

  obj=Person.new;

  obj.userDetails(name,email,mobile,age,address,profile,password);


else
  puts "Wrong Input Entered"
end

