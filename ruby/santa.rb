#create Santa class with 3 methods
#initialize method
#speak method
#eat cookies method

class Santa
  #santa class

  def initialize(name, gender, ethnicity)
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
    puts "#{name} has a gender of #{gender} and ethnicity of #{ethnicity}"
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
    puts "'That was a good #{cookie_flavor}', said #{@name}."
  end
  #ends eat_milk_and_cookies method

end
#ends santa class

santa = Santa.new("Jeff", "male", "Caucasian")
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")

santas = []
#empty array
names = ["Kris", "Adrian", "Michel", "Pat", "Max", "Taylor", "Jamie", "Jordan"]
#array of names
genders = ["agender", "bigender", "female", "gender fluid", "intersex", "male", "other", "transgender"]
#array of genders
ethnicities = ["Arabs", "African-American", "Irish", "Jews", "Native American", "Spaniards", "Swedes", "Thais", ""]
#array of ethnicities
genders.length.times do |i|
  #loop for number of items in gender array
  santas << Santa.new(names[i], genders[i], ethnicities[i])
  #add new santas to the array with variables from two arrays
end
#ends do loop
