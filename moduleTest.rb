require_relative 'test.rb'
class Testing
  extend Test
  puts self
  # def one
  #  self.abc
  # end
  def self.two
   self.abc
  end

end

# Testing.new.one
Testing.two
# Testing.new.abc