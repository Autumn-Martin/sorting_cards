# GOAL 2.2: make a deck class
class Deck
# GOAL: initialize to set up attributes at the beginning of the objects lifetime
  attr_reader :cards
  
  def initialize(cards)
    @cards = cards # instance variable
  end

  # GOAL: add method that returns the cards in the deck (#cards)
  def count
    deck.count
  end


end
