require 'interface'

describe Interface do

  subject(:interface) { described_class.new }

  context "When starting a new game" do
    describe "submitting user symbol" do
      it "asks user to input their chosen symbol" do
        expect{ interface.run }.
        to output("Which player do you want to be? X or O\n").to_stdout
      end
    end
  end

end
