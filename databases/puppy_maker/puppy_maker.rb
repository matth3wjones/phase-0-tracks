require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("puppies.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS puppies(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

db.execute(create_table_cmd)
db.results_as_hash = true
#db.execute("INSERT INTO puppies (name, age) VALUES ('Gunner', 1)")

#puppies = db.execute("SELECT * FROM puppies")
#puppies.each do |puppy|
 # puts "#{puppy['name']} is #{puppy['age']}"
#end

def create_puppy(db, name, age)
  db.execute("INSERT INTO puppies (name, age) VALUES (?, ?)", [name, age])
end

10.times do
  create_puppy(db, Faker::Name.name, 0)
end