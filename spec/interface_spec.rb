require 'interface'

describe Interface do

  context "When starting a new game" do
    describe "submitting user symbol" do
      it "asks user to input their chosen symbol" do
        expect{Interface.new}.
        to output("Which player would you like to be?  X or O\n").to_stdout
      end
    end
  end

end
