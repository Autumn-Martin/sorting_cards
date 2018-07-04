require "./lib/deck"
# make a class called Round
class Round
  # will need an attr_reader
  attr_reader :deck, :guesses
  # initialize
  def initialize(deck)
    @deck = deck
    @guesses = []
  end

  def current_card
    @deck.cards.first  
  end
  # add method for guesses
  # def guesses # another way to add a method for guesses
  #   guesses = []
  # end
end
