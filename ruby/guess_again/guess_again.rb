# PSEUDOCODING

# first draft of pseudocode is in markdown file in directory
#
#

# request a string from user
#
#

# request user names and the rules
#
#

# compare letter and add
#
#

# if complete win, else taunt
#
#

class Guessagain
  def request_word(the_word)
    puts "what is the word?"
    temp_word = gets.chomp
    the_word == temp_word
    the_word
  end

  def request_name

  end

  def compare

  end

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
puts "Welcome to Guess Again, a game like Hangman where no one gets hurt."
puts "A player picks a secret word for another player to guess, one letter at a time."
puts "Limit of 1 guess per letter in the secret word, so guess carefully"
game = Guessagain.new
#intro of game

puts "What is the word?"
secret_word = gets.chomp
