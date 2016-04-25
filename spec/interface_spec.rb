require 'interface'

describe Interface do

  let(:game_klass) { double(set_player_symbol: nil, get_current_board: nil, set_moves: nil, winning_move?: false, winner: 'X') }

  subject(:interface) { described_class.new(game_klass) }

  before do
    allow(interface.game).to receive(:winning_move?).and_return(true)
  end

  context "When starting a new game" do
    before do
      allow_any_instance_of(Kernel).to receive(:gets).and_return 'X'
    end

    describe "#start_game" do
      xit "collects user symbol for Game" do
        expect(interface.game).to receive(:set_player_symbol).with('X')
        expect(interface.game).to receive(:set_computer_symbol).with('X')
        interface.start_game
      end
      xit "only allows X or O to be entered" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return 'a'
        expect{interface.start_game}.
        to output('Please choose X or O').to_stdout
      end
    end
  end

  context "When playing a game" do
    before do
      allow_any_instance_of(Kernel).to receive(:gets).and_return 'A1'
    end

    describe "#play_game" do
      it "requests the current board from Game" do
        expect(interface.game).to receive(:get_current_board)
        interface.play_game
      end
      it "collects user move for Game" do
        expect(interface.game).to receive(:set_moves).with('A1')
        interface.play_game
      end

      it "announces a winner when the game is over" do
        allow(interface.game).to receive(:winner).and_return('X')
        expect{interface.play_game}.
        to output("\nWhere do you want to move?\n\nX has won!\n").to_stdout
      end
    end
  end

  context 'Edge cases when playing' do
    describe "Incorrect user input" do
      it "accepts abnormal co-ordinates" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return'1 a'
        expect(interface.game).to receive(:set_moves).with('A1')
        interface.play_game
      end
      it "accepts co-ordinates with extra characters" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return'3bewfsdfdf'
        expect(interface.game).to receive(:set_moves).with('B3')
        interface.play_game
      end
      xit "does not accept non-existent co-ordinates" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return'4 b'
        expect{interface.start_game}.
        to output('Please choose valid co-ordinates').to_stdout
      end
    end
  end

end
