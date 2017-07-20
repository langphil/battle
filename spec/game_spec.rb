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

  describe '#player_turn' do
    it 'will change the current player' do
      game.player_turn
      expect(game.current_player).to eq coop
    end
  end

  describe '#current_player' do
    it 'checks who the current player is' do
      expect(game.current_player).to eq diane
    end
  end

  describe '#game_over' do
    it 'will know when a player has zero HP' do
      allow(diane).to receive(:hp) { 0 }
      allow(coop).to receive(:hp) { 0 }
      expect(game).to be_game_over
    end
  end

  describe '#loser' do
    it 'will identify the loser - with zero HP' do
      allow(diane).to receive(:hp) { 0 }
      allow(coop).to receive(:hp) { 0 }
      expect(game.loser).to eq diane
    end
  end
end
