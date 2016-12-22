class Puppy
#puppy class
  def fetch(toy)
    #fetch method
    puts "I brought back the #{toy}!"
    #code
    toy
    #retrieve toy
  end
  #ends fetch method

  def speak(num)
    #speak method
    index = 0
    #loop counter
    while index < num
      puts "Woof!"
      #code
      index += 1
      #count up
    end
    #end while loop
  end
  #ends speak method

  def roll_over
    #roll-over method
    puts "*rolls over*"
  end
  #ends roll-over method

  def sit
    #sit method
    puts "*sits*"
  end
  #ends sit method

  def dog_years(num)
    #dog years method
    puts num*7
  end
  #ends dog years method

  def initialize
    puts "Initializing new puppy instance ..."
  end

end
#end dog class

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
fido.dog_years(4)
fido.sit

#release 2
class Kitten
  #kitten class
  def initialize
    puts "Initializing new kitten instance ..."
  end
  #end initialize method

  def meow
    #meow method
    puts "*meooooowwwws*"
  end
  #end meow meow

  def cat_years(num)
    #cat years
    puts num*6
  end
  #ends cat years method

  def sleep
    #sleeps
    puts "*sleeps*"
  end
  #end sleep method

end
#ends cat class

index = 0
#loop index
kitten_array = []
#empty array for storage
while index < 50
  #while loop for 50 instances
  kitten_array << Kitten.new
  #shovel new unnamed kittens into array
  #puts index
  #test
  index += 1
  #count up
end
#end while loop

kitten_array.each do |cat|
  #loop for iterating
  cat.meow
  #action to iterate
  cat.cat_years(2)
  #action to iterate
end
#ends do loop
