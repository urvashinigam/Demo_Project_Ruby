# Creating a module that contains a method
module MyModule
  def first_method
     puts 'This is the First Method.'
  end
end

class First_Class
  include MyModule
end

class Second_Class
  extend MyModule
end

# object access
First_Class.new.first_method

# class access
Second_Class.first_method