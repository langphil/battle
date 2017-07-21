require 'player.rb'

describe Player do
  subject(:coop) { described_class.new('Coop') }
  subject(:diane) { described_class.new('Diane')}

  let(:damage) { rand(0..10) }

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

    it 'randomly creates hit points' do
      expect(coop).to receive(:damage).and_return(damage)
      expect(coop.damage).to be damage
    end
  end
end
