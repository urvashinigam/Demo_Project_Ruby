

class Employee

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

  def view_detils
   hash_arr = [];

   hash1 = {name: @name,  @age = age , contact: @contact  , email: @email  ,  address: @address  , occupation: @occupation }
   hash_arr.push(hash1)
   hash_arr.each do |values|
     puts "name :" + values[:name]
     
     puts "age: #{values[:age]}"
     puts "contact no : #{values[:contact]}"
     puts "email : #{values[:email]}"
     puts "address : #{values[:address]}"
     puts "occupation : #{values[:occupation]}"
  end
end

end
obj = EmployeeU.new("uv","developer",1,)
obj2 = Employee.new("tani","dr.",1,2,34,79,24,9)
employee = Employee("yuvraj",23,989366666,'yuvraj@gmail','LIG 123','DR')
obj.view_detils
obj2.view_detils