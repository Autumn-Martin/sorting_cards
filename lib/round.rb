require "./lib/deck"
# make a class called Round
class Round
  # will need an attr_reader
  attr_reader :deck
  # initialize
  def initialize(deck)
    @deck = deck
  end
end
