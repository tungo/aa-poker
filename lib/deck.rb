require_relative 'card'

class Deck
  CARDS_SUITE = [:spade, :club, :heart, :diamond].freeze
  CARDS_VALUE = [
    'A',
    'K',
    'Q',
    'J',
    '10',
    '9',
    '8',
    '7',
    '6',
    '5',
    '4',
    '3',
    '2'
  ].freeze

  attr_reader :cards

  def initialize
    @cards = []
    set_cards
    shuffle
  end

  def set_cards
    CARDS_SUITE.each do |suit|
      CARDS_VALUE.each do |value|
        @cards << Card.new(value, suit)
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end
end
