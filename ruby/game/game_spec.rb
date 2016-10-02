require_relative 'game'

describe Game do 
	let(:game) { Game.new('hesham') }

    it "turns player1's input into dashes"	do
      expect(game.dasher).to eq "------"	
    end

    it "stores player2's guesses in an array" do
      expect(game.storing_guesses('s')).to eq ['s']
        end

    it "store player2's guesses and their frequency in a hash" do
      storing_guesses('s') 
      expect(game.guesses_hash).to eq {"s"=>1}
        end    
    it "replaces a dash with the correctly guessed letter"	do
      game.dasher
      expect(game.compare('h')).to eq "h-----"	
    end

    it "returns the same dashed string when player2 guesses wrong" do
      game.dasher
      expect(game.compare('i')).to eq "------"
    end  

end

