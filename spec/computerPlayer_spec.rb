require 'computer_player'

describe ComputerPlayer do

  let(:computer) { described_class.new }

  context "before a symbol is set" do
    describe "#set_symbol" do
      it "is set to the opposite of the player" do
        computer.set_symbol('X')
        expect(computer.symbol).to eq ('O')
      end
    end
  end

  context "after a symbol is set" do
    before do
      computer.set_symbol('X')
    end

    describe "#make_move" do
      it "chooses an empty spot in the array" do
        expect(computer.make_move(['X',' ','O','O','O','X','O','O','O'])).
        to eq ([1])
      end
    end
  end



end
