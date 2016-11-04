require 'sqlite3'

pd = SQLite3::Database.new("directory.db")
pd.results_as_hash = true

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

def add_contact(pd, name, phone_number, email, family)
	pd.execute("INSERT INTO contacts (name, phone_number, email, family) VALUES (?, ?, ?, ?)", [name, phone_number, email, family])	
end

# add_contact(pd, "Hesham Elrehaimy", 6302769629, "hrehaimy@yahoo.com", "true")
