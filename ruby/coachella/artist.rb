class Artist
attr_reader :name, :style, :price

  def initialize(name, style, price)
    @name = name
    @style = style.upcase
    @price = price
  end

  def to_s
    "#{@style}: #{@name} #{@price}"
  end
end

#years_and_years = Artist.new("Years & Years", "dance", 500000)
#puts years_and_years