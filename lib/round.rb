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

  # {value: "Jack", suit: "Diamonds"}
  # def current_guess
  #   current_guess = Guess("#{value:} of #{suit:}", card)
  #   guesses << current_guess
  # end

  def record_guess(cards)
    current_guess = Guess.new("#{cards[:value]} of #{cards[:suit]}", current_card)
    @guesses << current_guess
    current_guess
  end
end
