# GOAL 2.1: make a deck class test
require "./lib/deck" # links to reader file for deck
require "./lib/card" # links to reader file for card
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

  # test #cards
  # this should error without the method #cards
  def test_can_create_deck_as_an_array_of_cards
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_1, card_2, card_3], deck.cards
  end

 # ---------CODE WORKS UP TO THIS POINT--------#
 # test if can return the number of cards in the deck
  def test_can_return_how_many_cards_in_the_deck
    card_1 = Card.new("3","Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal 3, deck.count
  end
end
