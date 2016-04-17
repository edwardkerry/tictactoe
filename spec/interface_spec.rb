require 'interface'

describe Interface do

  let(:game_klass) { double(set_player_symbol: nil, get_current_board: nil, set_player_move: nil) }

  subject(:interface) { described_class.new(game_klass) }

  context "When starting a new game" do

    describe "#start_game" do
      it "collects user symbol for Game" do
        allow_any_instance_of(Kernel).to receive(:gets).and_return 'X'
        expect(interface.game).to receive(:set_player_symbol).with('X')
        interface.start_game
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
        expect(interface.game).to receive(:set_player_move).with('A1')
        interface.play_game
      end
    end
  end

end
