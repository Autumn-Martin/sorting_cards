require 'pry'
# GOAL 1.1: make a card Object
# GOAL 1.2: initialize it with a value and a suit
class Card
  # attr_reader turns instance variables into methods that you can access outside of the class
  # outside of the class, you can read but not write (whereas with attr_writer, someone would be able to access your code)
  attr_reader :value, # be sure to remember a comma here (but don't comma after the last one)
              :suit
              # :total_value

  def initialize(value, suit)
    @value = value # instance variables
    @suit = suit
    # @total_value = total_value
  end

  def total_value
    card_values = {
                "2" => 2.0,
                "3"=> 3.0,
                "4"=> 4.0,
                "5"=> 5.0,
                "6"=> 6.0,
                "7"=> 7.0,
                "8"=> 8.0,
                "9"=> 9.0,
                "10"=> 10.0,
                "Jack"=> 11,
                "King"=> 12,
                "Queen"=> 13,
                "Ace"=> 14,
                "Clubs"=> 0.1,
                "Diamonds"=> 0.2,
                "Hearts"=> 0.3,
                "Spades"=> 0.4
              }
    total_value = card_values[value] + card_values[suit]
    return total_value
  end

end
