require_relative "artist"

class Music
  attr_accessor :name, :lineup
  attr_reader :stage, :day

  def initialize(name, stage, day)
    @name = name
    @stage = stage
    @day = day
    @lineup = []
  end

  def total_value
    total = 0
    @lineup.each do |artist|
      total += artist.price
    end
    total
  end

  def to_s
    "#{day} performances on the #{@stage} stage:"
  end
end

#sunday_main_stage = Music.new("Main Stage Lineup | Sunday", "Coachella", "Sunday"#)
#puts sunday_main_stage
#years_and_years = Artist.new("Years & Years", "dance", 500000)
#beyonce = Artist.new("Beyoncé", "hip_hop", 10000000000)
#sunday_main_stage.lineup << years_and_years
#sunday_main_stage.lineup << beyonce
#puts sunday_main_stage.lineup
#puts sunday_main_stage.total_value