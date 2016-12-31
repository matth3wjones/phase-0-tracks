# PSEUDOCODING

# first draft of pseudocode is in markdown file in directory
#
# request user names
# request a word from user
# compare letter and add
# if complete win, else taunt


class Guessagain
  attr_reader :is_right, :guess_count
  attr_accessor :letter_guess, :secret_word

  def initialize
    @secret_word = ""
    @master_array = []
    @guess_count = 0
    @is_right = false
  end

  def acceptr(secret_word)
    @secret_word = secret_word
  end

  def splitr(the_word)
    @master_array = the_word.split("")
  end

  def checkr(letter, array)
    array.include?(letter)
  end

  def hider(array)
    hidden_array = []
    @master_array = hidden_array
    index = 0
    while index < array.length
      @master_array << "_"
      index += 1
    end
    @master_array
  end

  def displayr(guess, array)
    index = 0
    working_array = []
    @master_array = working_array
    array.each do
      if array[index] == guess
        working_array << guess
        index += 1
      elsif @master_array[index] == nil
        working_array << "_"
        index += 1
      else
        index += 1
      end
    end
    @master_array
  end

end
#ends class loop

# USER INTERFACE
#
#

puts "What is your name?"
usr1 = gets.chomp.capitalize!
puts "Hi #{usr1}, you'll be picking a secret word, and having a friend guess, can you tell me who that will be?"
usr2 = gets.chomp.capitalize!
#puts "..."
#puts "Welcome to Guess Again... it's just like Hangman but no #one #gets hurt."
#puts "A player picks a secret word for another player to guess, #one #letter at a time."
#puts "Limit of 1 guess per letter in the secret word, so guess #carefully"
#game = Guessagain.new
#guess_count = 0
#intro of game

