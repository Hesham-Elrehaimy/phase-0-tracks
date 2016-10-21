require_relative 'game_jackrabbits'

describe Game do 
	let(:game) {Game.new("hello")}

	it "Turns player1's words into dashes" do
		expect(game.progress_tracker("hello")).to eq "-----"
	end

	it "Compare player2's guesses to player1's word" do 
		game.progress_tracker("hello")
		expect(game.compare_letter("s")).to eq "-----"
		expect(game.compare_letter("h")).to eq "h----"
	end
	
end