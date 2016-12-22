class Santa
  #santa class

  def initialize
    #identifies new instance being intialized
    puts "Initializing Santa instance ..."
    #shows in Terminal new initialization
  end
  #ends initialize method

  def speak
    #speak method
    puts "Ho, ho, ho! Haaaappy holidays!"
    #code
  end
  #ends speak method

  def eat_milk_and_cookies(cookie_flavor)
    #eat_milk_and_cookies method
    puts "That was a good #{cookie_flavor}!"
  end
  #ends eat_milk_and_cookies method

end
#ends santa class

jeff = Santa.new
jeff.speak
jeff.eat_milk_and_cookies("snickerdoodle")