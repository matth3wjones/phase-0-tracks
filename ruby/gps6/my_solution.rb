# Virus Predictor

# I worked on this challenge [with: Ryan Langrin].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#Require relative is a piece of code placed atop a document which identifies another document within your directory.  
#The document identified in this tag is basically copied and pasted into your document, any code present on that document 
#is now accessible and driver code running first.
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      rate = 0.4
    elsif @population_density >= 150
      rate = 0.3
    elsif @population_density >= 100
      rate = 0.2
    elsif @population_density >= 50
      rate = 0.1
    else
      rate = 0.05
    end
    number_of_deaths = (@population * rate).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      months = 0.5
    elsif @population_density >= 150
      months = 1
    elsif @population_density >= 100
      months = 1.5
    elsif @population_density >= 50
      months = 2
    else
      months = 2.5
    end

    puts " and will spread across the state in #{months} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#
#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])

#alabama.virus_effects


STATE_DATA.each do |state, hash|
  n = VirusPredictor.new(state)
  n.virus_effects
end

#test



#=======================================================================
# Reflection Section

#The main level of the hash uses strings as the key to identify each state, whereas the sub-hash uses symbols as keys. 
#   Stylistcally this difference makes the code clean and readable, using a string makes the state itself a printable object
#   while the symbol allows for easy access elsewhere, such as in the initialize method.
#
#
#require_relative identifies another file on your system or within your local network
#   require identifies an inherent piece of ruby internal code
#   Each require method acts as copy-paste, inserting code
#
#
#One could iterate through a hash by using #each to work through the hash on object at a time, or you can use #each_key 
#   to access only the key or #each_value to access only the values
#   
#Each variable is called upon without any parameters, and are called in sequential order. 
#   This method could be more productive, printing a single statement rather than two half statements
#
#This challenge really helped me to solidified my understanding of the require method, as well as constants, and instance
#variables, and how to use each to their most appropriate, and productive manner.  This concept was difficult for me previously.
#

