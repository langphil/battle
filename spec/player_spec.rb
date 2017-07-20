require 'player.rb'

describe Player do
  subject(:coop) { described_class.new('Coop') }
  subject(:diane) { described_class.new('Diane')}

  describe "#name" do
    it 'has a player name' do
      expect(coop.name).to eq 'Coop'
    end
  end

  describe '#HP' do
    it 'has a Health Point Integer' do
      expect(coop.hp).to eq described_class::HP
    end
  end

  describe '#receive_damage' do
    it 'deducts 10 points when hit' do
      expect { coop.receive_damage }.to change { coop.hp }.by (-10)
    end
  end
end
