# CLASS:
# Game

# CHARACTERISTICS:
# name: The Guessing Game
# player1 input: a word
# player2 input: a letter
# number of guesses: the number of letters in player1's word (repeated guess does not count)
# output: an updated version of an empty string containing the letters in player1's word which player2's letter matched
# final output: a congratulatory message if player2 wins or a taunting message if player2 loses  


# BEHAVIOR:
# stores input
# turns player1's input into dashes
# keeps track of number of guesses
# checks if player2's guess matches a letter in player1's word
# replaces a dash with player2's correct guess
# prints a message of whether player2 won or lost

class Game
          # attr_reader :word, :dashed_word

	def initialize(word)

		@word = word
	end

	def dasher
		@dashed_word = '-' * @word.length
		@dashed_word
	end	

    def compare(letter)
    	if @word.include? letter
    		@dashed_word[@word.index(letter)] = @word[@word.index(letter)]
    		@dashed_word
    	else
    		@dashed_word
    		
    	end
    end	

end		

