# 5. We just found out that the Passenger Pigeon is actually not extinct! Remove them from extinct_animals and return the key value pair as a two item array.
# ----

#extinct_animals.delete("Passenger Pigeon")

extinct_animals = {"Tasmanian Tiger" => 1936, "Eastern Hare Wallaby" => 1890, "Dodo" => 1662, "Pyrenean Ibex" => 2000, "Passenger Pigeon" => 1914, "West African Black Rhinoceros" => 2011, "Laysan Crake" => 1923}

extinct_animals.each do |animl, yr_extnct|
  print "#{animl} - #{yr_extnct} * \n\n"
end

def extract_kv(hash, value)
  hash.each do |key, value|
  return key, value if key == "Passenger Pigeon"
  end
end

farts = extract_kv(extinct_animals, "Passenger Pigeon")

p farts

class Squirrel
  attr_reader :name, :color, :location

  def initialize(name, color, location)
    @name = name.capitalize
    @color = color
    @location = location
  end

  def intro
    "#{name} is a #{color} squirrel from #{location}"
  end

end

names = ["greg", "criss", "mike", "zorro"]
colors = ["gray", "red", "black", "albino"]
locations = ["the boonies", "Manhattan", "San Diego"]

squirrel = Squirrel.new(names.sample, colors.sample, locations.sample)
p squirrel.intro

