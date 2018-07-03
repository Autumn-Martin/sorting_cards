# GOAL 2.2: make a deck class
class Deck
# GOAL: initialize to set up attributes at the beginning of the objects lifetime
  attr_reader :cards,
              :count

  def initialize(cards)
    @cards = cards # instance variable
  end
  # GOAL: add method that returns the cards in the deck (#cards)

  # GOAL: add method that returns the number of cards in the deck
  def count
    # binding.pry
    cards.count # note this vs. deck.cards.count in class DeckTest
  end

end
