require 'computer_player'

describe ComputerPlayer do

  let(:computer) { described_class.new }

  describe'#set_symbol' do
    it "is set to the opposite of the player" do
      computer.set_symbol('X')
      expect(computer.symbol).to eq ('O')
    end
  end



end
