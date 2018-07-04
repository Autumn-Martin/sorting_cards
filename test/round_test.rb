require "./lib/round"
require "minitest/autorun"
require "minitest/pride"


class RoundTest < Minitest::Test
  # create a test for an instance of round
  # this errors without a round class (uninitialized constant)
  def test_if_round_exists
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round, round
  end

  # test for #deck method
  def test_deck_method 
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck, round.deck
  end
end
