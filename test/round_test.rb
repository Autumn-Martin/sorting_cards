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
  def test_deck_method_on_round
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck, round.deck
  end

  # test for #guesses method
  def test_guesses_method_on_round
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal [], round.guesses
  end

  def test_for_current_card
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal deck.cards.first, round.current_card
  end

  def test_for_record_guess
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_equal "Jack of Diamonds", round.record_guess({value: "Jack", suit: "Diamonds"}) 
  end
end
