require "./lib/guess"
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


  def sort

    deck_size = @cards.length


    loop do
      sorted = false

      (deck_size-1).times do |sort|
        if cards[sort].total_value > cards[sort+1].total_value
          cards[sort], cards[sort+1] = cards[sort+1], cards[sort]
          sorted = true
        end
      end
      break if sorted == false # or not sorted
    end
    return cards 
  end



end
