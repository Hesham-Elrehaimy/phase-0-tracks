=begin
- Class
	- game

- Attributes
	- player1's word
	- counter for player2's guesses
	- player2's guesses
	- player2's progress

- Methods
	- method which initializes a guessing game
	- method which turns player1's word into dashes
	- method which compare's player2's guesses and shows player2's progress
=end

class Game
	attr_reader :word_to_guess, :answer_progress, :guesses_count
	def initialize(word_to_guess)
		@word_to_guess = word_to_guess
		@answer_progress = ''
		@guesses = []
		@guesses_count = 0
	end
	
	def progress_tracker(word)
		word.length.times do
			@answer_progress << '-'
		end
		@answer_progress
	end
	
	def compare_letter(guessed_letter)
		@guesses << guessed_letter

		if @guesses.count(guessed_letter) > 1 
			@guesses_count -= 1 
		elsif @word_to_guess.include?(guessed_letter)
			@word_to_guess.split('').each_with_index do |letter, i|
				if letter == guessed_letter
					@answer_progress[i] = letter
				end
			end	
		end	
		@guesses_count += 1 
		@answer_progress
	end	
end	

# puts "Player1: Enter a word for player2 to guess:"
# player1_word = gets.chomp 
# game = Game.new(player1_word)
# puts game.progress_tracker(player1_word)

# until game.word_to_guess == game.answer_progress || game.guesses_count == game.word_to_guess.length
# 	puts "Player2: Enter a letter to start guessing player1's word. You have #{game.word_to_guess.length - game.guesses_count} guess(es) left:"
# 	player2_guess = gets.chomp
# 	puts game.compare_letter(player2_guess)
# end	

# if game.word_to_guess == game.answer_progress
# 	puts "Congratulations! You've guessed the word correctly."
# else 
# 	puts "Hahahahaha you couldn't guess player1's word."	
# end