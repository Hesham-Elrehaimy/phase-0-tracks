require_relative 'game'

describe Game do 
	let(:game) { Game.new(word)}
    it "turns player1's input into dashes"	
      expect(game.to_dashes).to eq "'-' * word.length"	
    end

end