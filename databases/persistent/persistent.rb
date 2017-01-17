require 'sqlite3'
require 'faker'

class Itinerary

  def initialize
    @db = SQLite3::Database.new("list.db")
    @db.results_as_hash = true

    create_table = <<-SQL
      CREATE TABLE IF NOT EXISTS list(
        id INTEGER PRIMARY KEY,
        dest VARCHAR(255),
        date VARCHAR(255),
        days INT
      )
    SQL
    @db.execute(create_table)
  end

  def create(db, dest, date, days)
    puts "_" * 70
    puts "\n\n"
    puts "WELCOME"
  end

  def to_s
    "Hi"
  end

end

itin = Itinerary.new
# puts itin
itin.create(itin, "Santorini", "8/22/2017", 2)
