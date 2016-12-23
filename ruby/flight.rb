module Flight
  #declare flight module
  def take_off(altitude)
    #defines take_off method with 1 parameter
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
  #ends take_off method
end
#ends flight module

class Bird
  #declare bird class
  include Flight
  #links class to module
end
#ends bird class

class Plane
  #declares bird class
  include Flight
  #links class to module
end
#ends bird class

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)