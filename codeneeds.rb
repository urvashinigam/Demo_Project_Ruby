

class HR

  @name ;
  @occupation;
  @EL; #earn leave
  @CL; # Casual Leave (CL)
  @SL; # Sick Leave (SL)
  @LWP; #leave without pay
  @ML; # Marriage Leave
  @HL; # holidays
  def initialize(name,occupation,el,cl,sl,lwp,ml,hl)
    @name = name;
    @occupation = occupation;
    @EL   = el;
    @CL   = cl;
    @SL   = sl;
    @LWP  = lwp;
    @ML   = ml;
    @HL   = hl;
  end

  def view_detils
   hash_arr = [];

   hash1 = {name: @name, occupation: @occupation, EL: @EL , CL: @CL , Sl: @SL ,LWP: @LWP , ML: @ML, HL: @HL }
   hash_arr.push(hash1)
   hash_arr.each do |values|
     puts "name :" + values[:name]
     puts "occupation : #{values[:occupation]}"
     puts "earn leave : #{values[:EL]}"
     puts "Casual Leave : #{values[:CL]}"
     puts "Sick Leave : #{values[:SL]}"
     puts "leave without pay : #{values[:LWP]}"
     puts "Marriage Leave:#{values[:ML]}"
     puts "holidays : #{values[:HL]}"
  end
end

end
obj = HR.new("uv","rnginerar",1,2,34,54,69,0)
obj2 = HR.new("tani","dr.",1,2,34,79,24,9)
obj.view_detils
obj2.view_detils