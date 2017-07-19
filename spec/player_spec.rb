require 'player.rb'

describe Player do
  let(:subject) { described_class.new }
  let(:name) { double :name }
  #let(:player2) { double :player2 }

  describe '#initialize' do
    it 'stores two player names in global variables' do
      subject.initialize(name)
      expect(subject.name).to eq name
    end
    
  end
  describe "#print_name" do
    it 'responds with class name' do
    expect(subject.print_name).to eq subject
    end
  end
end
