require_relative 'game'

describe Game do 
	let(:game) { Game.new('hesham')}
    it "turns player1's input into dashes"	do
      expect(game.dasher).to eq "------"	
    end
    
    it "inserts the correctly guessed letter into the dashes" do
    	expect(game.compare('h')).to eq "h-----"
    end	

end

