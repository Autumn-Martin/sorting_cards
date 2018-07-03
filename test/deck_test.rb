# GOAL 2.1: make a deck class test
require "./lib/deck"
require "./lib/card" # new
require "minitest/autorun"
require "minitest/pride"
require 'pry'
class Deck_Test < Minitest::Test
  # test if you can create an instance of deck
  # this should error without a deck class (uninitialized constant error)
  def test_can_create_an_object_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck
  end

end
