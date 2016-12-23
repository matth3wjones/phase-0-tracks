module Shout
  #creates shout module
  def self.yell_angrily(words)
    #method to angry yell
    words + "!!!" + " :("
  end
  #ends angry yell method
  def self.yelling_happily(words)
    #method to happy yell
    words + "!!!" + " " + "💯"
    #emoji correctly renders in terminal
  end
  #ends happy yell method
end
#ends shout module

puts Shout.yell_angrily("I'M HUNGRY")
puts Shout.yelling_happily("Best day ever")