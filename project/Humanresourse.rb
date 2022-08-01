

class Humanresourse

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
    hash1 = {name: @name,  age: @age , contact: @contact  , email: @email  ,  address: @address  , occupation: @occupation }
    hash_arr.push(hash1)
    hash_arr.each do |values|
      delete_item = gets.chomp
    if (has_arr eql? delete_item )
      puts "delete    : #{delete_item.delete(delete_item) }\n\n"
      else
        puts "not delete"
  end
end
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
obj.add_details
puts "do you want to delete"
hr_delete_input = gets.chomp.to_s
if (hr_delete_input == "yes" || hr_delete_input == "YES" )
obj.delete
else
  puts "not valid"
end