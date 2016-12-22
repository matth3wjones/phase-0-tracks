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


end
#end class

fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
fido.dog_years(4)
fido.sit