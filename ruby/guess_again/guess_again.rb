# PSEUDOCODING

# first draft of pseudocode is in markdown file in directory
#
# request user names
# request a word from user
# compare letter and add
# if complete win, else taunt

require 'io/console'
class Guessagain
  attr_accessor :is_over
  attr_reader   :guess_count

  def initialize
    @master_array = []
    @display_array = []
    @guess_array = []
    @is_over = false
    @guess_count = 0
  end

  def splitr(word)
    @master_array = word.split("")
  end

  def prev_guesses(guess)
    if @guess_array.include?(guess)
      return true
    else
      @guess_array << guess
      return false
    end
  end

  def checkr(guess, array)
    array.include?(guess)
  end

  def hider(array)
    index = 0
    while index < array.length
      @display_array << "_"
      index += 1
    end
    @display_array
  end

  def replacer(guess)
    @guess_count += 1
    letter_index = @master_array.index(guess)
    if checkr(guess, @master_array)
      @display_array.delete_at(letter_index)
      @display_array.insert(letter_index, guess)
      puts "CORRECT! And '#{guess}' goes right here:"
      if @display_array == @master_array
        puts "YAY WINNER!"
        @is_over = true
      end
    else
      puts "Nope, '#{guess}' is not in the word."
    end
    p @display_array.join(' ')
  end
end
#ends class loop

# USER INTERFACE
#
puts ".".center(10)
puts "..".center(15)
puts "...".center(20)
puts "....".center(25)
puts ".....".center(30)
puts "......".center(35)
puts ".......".center(40)
puts "WELCOME to".center(40)
puts "Guess Again".center(40)
puts ".......".center(40)
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
puts "Ok #{usr2} and #{usr1}, let's get started. #{usr2} will get two guesses plus one guess for each letter in the word provided by #{usr1}.  #{usr1} please enter the secret word"
secret_word = STDIN.noecho(&:gets).chomp

game = Guessagain.new
letter_count = secret_word.length
@letter_count = letter_count
total_guesses = letter_count + 2
turn = 0

puts "Ok #{usr2}, let's play!"
p game.hider(game.splitr(secret_word)).join(' ')
puts "#{usr1} picked a #{letter_count} letter word, so you have #{total_guesses} guesses #{usr2}.  GOOD LUCK, cause you'll need it!"

while !game.is_over
  if turn < total_guesses
    puts "#{usr2}, please enter your guess"
    guess = gets.chomp
    if game.prev_guesses(guess)
      puts "Try again, you've used that letter"
    else
      game.replacer(guess)
      turn += 1
    end
  else
    puts "You lose, #{usr2}!"
    game.is_over = true
  end
end


