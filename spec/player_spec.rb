require 'player.rb'

describe Player do
  subject(:player) { described_class.new(name) }

  let(:name) { 'Coop' }

  describe "#name" do
    it 'has a player name' do
      expect(player.name).to eq name
    end
  end
end
