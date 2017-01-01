# PSEUDOCODING

# first draft of pseudocode is in markdown file in directory
#
# request user names
# request a word from user
# compare letter and add
# if complete win, else taunt

require 'io/console'
class Guessagain
  attr_reader :is_right, :guess_count
  attr_accessor :letter_guess, :secret_word, :master_array, :letter_count

  def initialize
    @secret_word = ""
    @master_array = []
    @display_array = []
    @guess_count = 0
    @is_right = false
  end

  def acceptr(secret_word)
    @secret_word = secret_word
  end

  def split_to_array(secret_word)
    @master_array = secret_word.split("")
  end

  def checkr(guess)
    @master_array.include?(guess)
  end

  def hider(array)
    index = 0
    while index < @master_array.length
      @display_array << "_"
      index += 1
    end
    @display_array
  end

 def replacer(guess, index)
  letter_index = @master_array.index(guess)
    if checkr(guess)
      @display_array.delete_at(letter_index)
      @display_array.insert(letter_index, guess)
      p @display_array
      puts "yay"
    else
      p @display_array
      puts "loser"
    end
  end
    @master_array
end
#ends class loop

# USER INTERFACE
#
#
game = Guessagain.new
guess_count = 0

puts "WELCOME to".center(40)
puts "Guess Again".center(40)
puts "......".center(40)
puts "......".center(35)
puts ".....".center(30)
puts "....".center(25)
puts "...".center(20)
puts "..".center(15)
puts ".".center(10)

puts "What is your name?"
usr1 = gets.chomp

puts "Hi #{usr1}, you'll be picking a secret word, and having a friend guess, can you tell me who that will be?"
usr2 = gets.chomp

puts "Ok #{usr2} and #{usr1}, let's get started.  Remember, #{usr2} will get one guess for each letter in the word provided by #{usr1}.  #{usr1} please enter the secret word"
secret_word = STDIN.noecho(&:gets).chomp
@secret_word = secret_word
letter_count = secret_word.length
@letter_count = letter_count


puts "Ok #{usr2}, let's play!"
p game.hider(game.split_to_array(secret_word)).join(' ')
puts "#{usr1} chose a #{letter_count} letter word, so you have #{letter_count} guesses #{usr2}.  GOOD LUCK, cause you'll need it!"

while guess_count < letter_count || game.is_right
  puts "#{usr2}, please enter your guess"
  guess = gets.chomp
  game.replacer(guess, guess_count)
  guess_count += 1
end




