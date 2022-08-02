 class Employee
    EMPLOYEE_DATA = []
    attr_accessor :id, :name
    def initialize(name)
      @id = set_id ,
      @name = name ,
      @sl =5 ,
      @cl = 18 ,
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
             end 

            end
            def all
              EMPLOYEE_DATA
            end

            def find_by(name)
                    all.select {|user| user.name == name}
            end
          end
          Employee.create("urvashi")
  
  # -----------------------------------------------------------------------------------------------------
  #  class Items
  #   ALL_ITEMS = [] 
  #   attr_accessor :id, :name, :price
  #   def initialize(name, price)
  #     @id = set_incremental_id
  #     @name = name
  #     @price = price
  #     ALL_ITEMS << self
  #   end
    
  #   def set_incremental_id
  #     (ALL_ITEMS.last&.id || 0) + 1
  #   end

  #   def destroy
  #     ALL_ITEMS.delete(self)
  #   end

  #   class << self
  #     def create(name, price)
  #       new(name, price)
  #     end

  #     def find_by(name)
  #       all.select {|item| item.name == name}
  #     end

  #     def all
  #       ALL_ITEMS
  #     end
      
  #     def clear
  #       print "\e[2J\e[f"
  #     end
  #   end
  # end
