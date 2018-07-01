# GOAL 1.1: make a card Object
# GOAL 1.2: initialize it with a value and a suit
class Card
  # attr_reader turns instance variables into methods that you can access outside of the class
  # outside of the class, you can read but not write (whereas with attr_writer, someone would be able to access your code)
  attr_reader :value, # be sure to remember a comma here (but don't comma after the last one)
              :suit
  def initialize(value, suit)
    @value = value # instance variable
    @suit = suit # instance variable
  end


end
