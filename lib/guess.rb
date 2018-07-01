# GOAL 1.3: make a guess Object
# GOAL 1.4: initialize it with a value & a suit
class Guess
  # attr_reader turns instance variables into methods that you can access outside of the class
  # outside of the class, you can read but not write (whereas with attr_writer, someone would be able to access your code)
  attr_reader :value,# be sure to remember a comma here (but don't comma after the last one)
              :suit

  def initialize(value, suit)
    @value = value # instance variable
    @suit = suit # instance variable
  end
  
end
