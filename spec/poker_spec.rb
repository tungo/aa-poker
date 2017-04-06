require 'requires'

describe Card do
  subject(:card) { Card.new('A', :spade) }

  describe "#initialize" do
    it "set the value" do
      expect(card.value).to eq('A')
    end

    it "set the suit" do
      expect(card.suit).to eq(:spade)
    end
  end
end

describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do

    it "contain an array of 52 cards" do
      expect(deck.cards.size).to eq(52)
      expect(deck.cards.sample.is_a?(Card)).to be true
    end




  end
end
