require_relative "music"
require_relative "artist"

class Coachella_2017
  attr_reader :complete_lineup

  def initialize
    @complete_lineup = []
  end

  def add_stage(stage)
    if @complete_lineup.length < 21
      @complete_lineup << stage
      true
    else
      false
    end
  end

  def total_value
    value = 0
    @complete_lineup.each do |stage|
        value += stage.total_value
    end
    value
  end

  def to_s
    stage_lineup = ""
    @complete_lineup.each do |stage|
      stage_lineup << stage.to_s.upcase
      stage_lineup << "\n\n"
      stage.lineup.each do |artist|
        stage_lineup << artist.to_s
        stage_lineup << "\n"
      end
      stage_lineup << "\n"
    end
    stage_lineup
  end
end

#make 2017 lineup
coachella_2017 = Coachella_2017.new

#make main stage sunday roster
sunday_main_stage = Music.new("Lineup", "Coachella", "Sunday")
#puts sunday_main_stage
years_and_years = Artist.new("Years & Years", "dance", 500000)
beyonce = Artist.new("Beyoncé", "hip_hop", 10000000000)
sunday_main_stage.lineup << years_and_years
sunday_main_stage.lineup << beyonce
#puts sunday_main_stage.lineup
#puts sunday_main_stage.total_value

#make sahara tent sunday roster
sunday_sahara_tent = Music.new("Lineup", "Sahara", "Sunday")
rihanna = Artist.new("Rihanna", "pop", 7500000000)
fleetwood_mac = Artist.new("Fleetwood Mac", "rock", 500000000)
sunday_sahara_tent.lineup << rihanna
sunday_sahara_tent.lineup << fleetwood_mac

coachella_2017.add_stage(sunday_main_stage)
coachella_2017.add_stage(sunday_sahara_tent)

puts coachella_2017
puts coachella_2017.total_value