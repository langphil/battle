require 'player.rb'

describe Player do
  let(:subject) { described_class.new }

  describe "#print_name" do
    it 'responds with class name' do
    expect(subject.print_name).to eq subject
    end
  end
end
