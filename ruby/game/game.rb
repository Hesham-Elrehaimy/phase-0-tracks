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
# a repeated guess does not count
# prints a message of whether player2 won or lost

class Game
          attr_accessor :dashed_word, :word, :guess_count, :guesses, :letters

    def initialize(word)

        @word = word
        @guess_count = 0
        @letters = Array.new
        @guesses = Hash.new(0)
    end

    def dasher
        @dashed_word = '-' * @word.length
        @dashed_word
    end 
    
    def storing_guesses(guess)
        
     @letters.push(guess)
     @letters

        
    end

    def guesses_hash
        @letters.each do |char| 
            @guesses[char] += 1
        end
       @guesses
    end     


    def compare(letter)
        if @word.include? letter
            @guess_count += 1 
            @dashed_word[@word.index(letter)] = @word[@word.index(letter)]
            @dashed_word
        else
            @guess_count += 1 
            @dashed_word
        end
      
    end 


    

end 
game = Game.new('hesham')
game.storing_guesses('s')
p game.guesses_hash

# puts "Player1: Enter a word for player2 to guess:"
# word = gets.chomp
# game = Game.new(word)
# puts game.dasher
# while game.guess_count < game.word.length
#     puts "player2: Enter a letter to guess player1's word (You have #{(game.word.length).to_i - (game.guess_count).to_i} guesses):"
#     # letters = []
    

#     letter = gets.chomp
# #     letters << letter
# #     guesses = Hash.new(0)
# # letters.each{ |e| guesses[e] += 1 }  
   
#    if game.compare(letter)
#     puts game.dashed_word
#    # elsif
#    #  guesses[:e] > 1
#    #  game.guess_count += 0
#    else
#     puts game.dashed_word
#    end
# end   

# if game.dashed_word == game.word

#     puts "Congratulations. You've guessed the word correctly."
# else
#     puts "*In Eric Cartman's voice* Nana nananana! Haha hahahaha! You couldn't guess the word."
# end        

#  # game = Game.new('hesham')
 
#  # puts game.dasher
 
#  # puts game.compare('h')

#  # puts game.guess_count

