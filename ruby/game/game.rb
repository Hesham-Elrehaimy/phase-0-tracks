# CLASS:
# Game

# CHARACTERISTICS:
# name: The Guessing Game
# player1 input: a word
# player2 input: a letter
# number of guesses: the number of unrepeated letters in player1's word
# output: an updated version of an empty string containing the letters in player1's word which player2's letter matched
# final output: a congratulatory message if player2 wins or a taunting message if player2 loses  


# BEHAVIOR:
# stores input
# compares both players' input
# keeps track of number of guesses
# turns player1's input into dashes
# prints messages indicating player2's progress
# prints a message of whether player2 won or lost

class Game

	def initialize(word)

		@word = word
	end

	def dasher
		dashed_word = '-' * @word.length
		dashed_word
	end	



end		

game = Game.new('hesham')
p game.dasher