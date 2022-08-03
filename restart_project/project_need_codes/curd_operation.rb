class Curdoperation
  EMPLOYEE_DATA = []
  attr_accessor :id, :name
  def initialize(name)
    @id = set_id ,
    @name = name ,
    @sl =5,
    @cl = 18,
    EMPLOYEE_DATA << self
  end

  def set_id
    (EMPLOYEE_DATA.last&.id || 0) + 1
  end

  # def destroy
  #   EMPLOYEE_DATA.delete(self)
  # end

  class << self
    def create(name)
      new(name)
      puts "#{name}"
    end 
    
    def all
      EMPLOYEE_DATA
    end

    def find_by(name)
     all.select {|user| user.name == name}
    end

    def clear
      print "\e[2J\e[f"
    end
  end
end 
Curdoperation.create("urvashi")
Curdoperation.all
Curdoperation.find_by("urvashi")
# Employee.destroy

