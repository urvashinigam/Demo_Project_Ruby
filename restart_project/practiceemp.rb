# class Employee
#   TOTAL =18;

#   def leavetake
#     puts "enter value to take leave"
  
#     EV = gets.chomp
#   end

# end
# Employee.leavetake
# puts Employee::EV


module Gfg
	
	
	
	# Prefix with name of Module
	# module method
	def Gfg.portal
    C = gets.chomp;
		puts "Welcome to GFG Portal!"
	end
		
	# Prefix with the name of Module
	# module method
	def Gfg.tutorial
		puts "Ruby Tutorial!"
	end
		
	# Prefix with the name of Module
	# module method
	def Gfg.topic
		puts "Topic - Module"
	end
	
end

# displaying the value of
# module constant
puts Gfg::C

# calling the methods of the module
Gfg.portal
Gfg.tutorial
Gfg.topic
