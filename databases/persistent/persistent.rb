require 'sqlite3'

class Itinerary
  def initialize
    @db = SQLite3::Database.new("list.db")
    @db.results_as_hash = true

    create_table = <<-SQL
      CREATE TABLE IF NOT EXISTS list (
        id INTEGER PRIMARY KEY,
        dest VARCHAR(255),
        date VARCHAR(255),
        days INT
      )
    SQL
    @db.execute(create_table)
  end

  def save(dest, date, days)
    @db.execute("INSERT INTO list (dest, date, days) VALUES (?, ?, ?)", [dest, date, days])
  end

  def run
    puts "Type GO if you want to get away, SEE to view your itinerary or EXIT"
    input = gets.chomp.upcase
    case input
    when 'GO' then go
    when 'SEE' then see
    when 'EXIT' then exit
    else puts "Please type GO, SEE or EXIT:"
      input = gets.chomp.upcase
    end
  end

  def see
    list = @db.execute("SELECT * from list")
    list.each do |db|
      puts "#{db['dest']} for #{db['days']} nights starting #{db['date']}"
    end
    run
  end

  def go
    puts "Where are you going?"
    dest = gets.chomp
    puts "When do you arrive?"
    date = gets.chomp
    puts "How many nights in #{dest}?"
    days = gets.chomp
    save(dest, date, days)
    run
  end

end

itin = Itinerary.new
# puts itin
#input = false
#while != true
#  puts "Where are you going?"
#  dest = gets.chomp
#  puts "When do you arrive?"
#  date = gets.chomp
#  puts "How many nights in #{dest}?"
#  days = gets.chomp
#
#  itin.save(dest, date, days)
#end


itin.run