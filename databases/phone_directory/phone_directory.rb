require 'sqlite3'

pd = SQLite3::Database.new("directory.db")

create_table_cmd = <<-SQL 
CREATE TABLE IF NOT EXISTS contacts(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	phone_number INT,
	email VARCHAR(255),
	family BOLEAN
	  )
SQL

pd.execute(create_table_cmd)

