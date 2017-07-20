require 'game'

describe Game do
  let(:diane) { double(:person) }
  let(:coop) { double(:coop) }
  subject(:game) { described_class.new(diane, coop) }

  describe "#player_1" do
    it "returns the name of player 1" do
      expect(game.player_1).to eq diane
    end
  end

  describe "#player_2" do
    it "returns the name of player 2" do
      expect(game.player_2).to eq coop
    end
  end

  describe '#attack' do
    it 'attacks another player' do
      expect(diane).to receive(:receive_damage)
      game.attack(diane)
    end
  end
end
