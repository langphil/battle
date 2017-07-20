require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:diane) { double(:person) }
  let(:coop) { double(:coop) }

  describe '#attack' do
    it 'attacks another player' do
      expect(diane).to receive(:receive_damage)
      game.attack(diane)
    end
  end
end
