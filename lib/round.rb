require "./lib/deck"
# make a class called Round
class Round
  # will need an attr_reader
  attr_reader   :deck,
                :guesses,
                :number_correct
  # initialize
  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
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

    if current_guess.correct? == true
      @number_correct += 1
      @deck.cards.shift # switches to the next card when the current guess is correct
    else
      @number_correct += 0
      @deck.cards
    end

    return current_guess
  end

  # def number_correct
  #
  #   if current_guess.correct? == true
  #     number_correct += 1
  #   else
  #     number_correct += 0
  #   end
  # end
end
