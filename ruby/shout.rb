#module Shout
#  #creates shout module
#  def self.yell_angrily(words)
#    #method to angry yell
#    words + "!!!" + " :("
#  end
#  #ends angry yell method
#  def self.yelling_happily(words)
#    #method to happy yell
#    words + "!!!" + " " + "💯"
#    #emoji correctly renders in terminal
#  end
#  #ends happy yell method
#end
##ends shout module
#
#puts Shout.yell_angrily("I'M HUNGRY")
#puts Shout.yelling_happily("Best day ever")#
#############################################

module Shout
  #creates shout module
  def yell_angrily(words)
    #defines angry method
    words + "!!!" + " :("
  end
  #ends yell angry method

  def yelling_happily(words)
    #defines happy method
    words + "!!!" + " " + ":)"
  end
  #ends happy method
end
#ends should module

class Angry
  include Shout
  #links to shout module
end
#ends angry class

class Happy
  include Shout
  #links to shout module
end
#ends happy class

joy = Happy.new
p joy.yelling_happily("Best day ever")

oscar_the_grouch = Angry.new
p  oscar_the_grouch.yell_angrily("I'm hungry")