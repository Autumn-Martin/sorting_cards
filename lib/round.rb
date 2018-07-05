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
    @total_guesses = 0
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(cards)
    current_guess = Guess.new("#{cards[:value]} of #{cards[:suit]}", current_card)
    @guesses << current_guess

    if current_guess.correct? == true
      @number_correct += 1
      @deck.cards.shift # switches to the next card when the current guess is correct
      @total_guesses += 1
    else
      @number_correct += 0
      @deck.cards
      @total_guesses += 1
    end

    def percent_correct
      percent_correct = @number_correct.to_f / @total_guesses.to_f * 100
      return percent_correct
    end

    return current_guess
  end


end
