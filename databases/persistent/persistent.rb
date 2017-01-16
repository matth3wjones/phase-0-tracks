require 'sqlite3'

class Test
  db = SQLite3::Database.new("list.db")
  create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS list(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
    )
  SQL

end

Test.new