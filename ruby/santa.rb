#create Santa class with 3 methods
#initialize method
#speak method
#eat cookies method

class Santa
  #santa class
  attr_reader :name, :gender, :age, :ethnicity, :reindeer_ranking
  attr_accessor :name, :gender, :age

  def initialize(name, gender, ethnicity, age)
    #identifies new instance being intialized
    puts "Initializing Santa instance #{name}..."
    #shows in Terminal new initialization
    @name = name
    #name instance variable
    @gender = gender
    #gender instance variable
    @ethnicity = ethnicity
    #ethnicity instance variable
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    #static ranking of reindeer
    @age = 0
    #static age of zero
    puts "#{name} has a gender of #{gender} and ethnicity of #{ethnicity} and is #{age} years old"
  end
  #ends initialize method

  def celebrate_birthday=(num)
    #celebrate_birthday setter method
    @age += num
  end
  #ends celebrate_birthday setter method

  def get_mad_at=(reindeer_name)
    #get_mad_at setter method
    index = @reindeer_ranking.index(reindeer_name)
    #identify the index of the string in the array
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(index))
    #delete the item from the array while re-adding at end of array
  end
  #ends get_mad_at setter method

  def speak
    #speak method
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  #ends speak method

  def eat_milk_and_cookies(cookie_flavor)
    #eat_milk_and_cookies method
    puts "'That was a good #{cookie_flavor}', said #{@name}."
  end
  #ends eat_milk_and_cookies method

end
#ends santa class

santa = Santa.new("Jeff", "male", "Caucasian", 29)
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
santa.name = "Jeffrey"
#setter test
puts "#{santa.name}"
#getter test
santa.celebrate_birthday=(1)
#setter test
puts "#{santa.name} is #{santa.age}"
#getter test
santa.celebrate_birthday=(1)
puts "#{santa.name} is #{santa.age}"
#getter/setter test 2
santa.celebrate_birthday=(1)
puts "#{santa.name} is #{santa.age}"
#getter/setter test 3
santa.gender=("other")
#setter test
puts "#{santa.name} has a gender of #{santa.gender}"
#setter test
santa.get_mad_at=("Vixen")
#setter test
puts "Santa's Reindeer Ranking #{santa.reindeer_ranking}"
#getter test

santas = []
#empty array
names = ["Kris", "Adrian", "Michel", "Pat", "Max", "Taylor", "Jamie", "Jordan"]
#array of names
genders = ["agender", "bigender", "female", "gender fluid", "intersex", "male", "other", "transgender"]
#array of genders
ethnicities = ["Arabs", "African-American", "Irish", "Jews", "Native American", "Spaniards", "Swedes", "Thais", "Other"]
#array of ethnicities
400.times do |i|
  #loop for number of items in gender array
  santas << Santa.new(names.sample, genders.sample, ethnicities.sample, age=rand(140))
  #add new santas to the array with variables from two arrays
end
#ends do loop

