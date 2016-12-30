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
    @guess_count = 0
    @is_right = false
  end

  def seperate_word(the_word)
    the_word.split("")
  end

  def check_a_letter(letter, array)
    array.include?(letter)
  end

  def hide_array(array)

  end

  # if complete win, else taunt
  #
  #
  def win_or_taunt

  end

end
#ends class loop

# USER INTERFACE
#
#

puts "."
puts ".."
puts "..."
puts "Welcome to Guess Again... it's just like Hangman but no one gets hurt."
puts "A player picks a secret word for another player to guess, one letter at a time."
puts "Limit of 1 guess per letter in the secret word, so guess carefully"
game = Guessagain.new
guess_count = 0
#intro of game

