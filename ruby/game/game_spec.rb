require_relative 'game'

describe Game do 
	let(:game) { Game.new('word')}
    it "turns player1's input into dashes"	do
      expect(game.dasher).to eq "----"	
    end

end

