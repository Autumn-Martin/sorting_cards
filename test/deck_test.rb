# GOAL 2.1: make a deck class test
require "./lib/deck"
require "minitest/autorun"
require "minitest/pride"
require 'pry'
class Deck_Test < Minitest::Test
  # test if you can create an instance of deck
  # this should error without a deck class (uninitialized constant error)
  def test_can_create_an_object_deck
    deck = Deck.new([card_1, card_2])
    assert_instance_of Deck, deck
  end

end
