require "rspec"
require "card"

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
