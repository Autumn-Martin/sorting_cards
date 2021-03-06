require "./lib/card"
# GOAL 1.3: make a guess Object
# GOAL 1.4: initialize it with a value & a suit
class Guess
  # attr_reader turns instance variables into methods that you can access outside of the class
  # outside of the class, you can read but not write (whereas with attr_writer, someone would be able to access your code)
  attr_reader :response, :card # be sure to remember a comma here (but don't comma after the last one)

  def initialize(response, card)
    @response = response # instance variable
    @card = card # instance variable
  end

  # need to compare parts of the response string to card instance variables
  # split response string into an array
  def response_to_array
    response.split(" ")
  end

  # need to compare the guess to the actual card
  def correct?
    if response_to_array[0] == card.value && response_to_array[-1] == card.suit
      true #=> true
    else
      false #=> false
    end
  end

  # adds feedback as whether guess is correct or incorrect
  def feedback
    if response_to_array[0] == card.value && response_to_array[-1] == card.suit
      return "Correct!" #puts doesn't work here
    else
      return "Incorrect."
    end
  end
end
