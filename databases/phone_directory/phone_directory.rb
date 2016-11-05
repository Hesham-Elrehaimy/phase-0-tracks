require 'sqlite3'

db = SQLite3::Database.new("directory.db")
db.results_as_hash = true

create_table_cmd = <<-SQL 
CREATE TABLE IF NOT EXISTS contacts(
	id INTEGER PRIMARY KEY,
	name VARCHAR(255),
	phone_number INT,
	email VARCHAR(255),
	family BOLEAN
	  )
SQL

db.execute(create_table_cmd)

def add_contact(db, name, phone_number, email, family)
	db.execute("INSERT INTO contacts (name, phone_number, email, family) VALUES (?, ?, ?, ?)", [name, phone_number, email, family])	
end


def edit_contact(db, user_input, attribute, info, new_info)
	db.execute("UPDATE contacts SET #{info} = ? WHERE #{attribute} = ?", [new_info, user_input])
end

def delete_contact(db, attribute, user_input)
	db.execute("DELETE FROM contacts WHERE #{attribute} = ?", [user_input])
end	

def find_contact(db, attribute, user_input)
	contact_hash = db.execute("SELECT * FROM contacts WHERE #{attribute} = ?", [user_input])
	contact_hash.each do |info|
		puts "Name: #{info['name']} \n Number: #{info['phone_number']} \n Email: #{info['email']} \n Family Member: #{info['family']}"
	end
end

def view_all_contacts(db)
	contacts = db.execute("SELECT * FROM contacts")
	contacts.each do |contact|
		puts "Name: #{contact['name']} \n Number: #{contact['phone_number']} \n Email: #{contact['email']} \n Family Member: #{contact['family']}"
	end
end

edit_contact(db, "Moamen Abdelaziz", "name", "family", "true")
view_all_contacts(db)

# puts "To add a contact type 'add'. To edit a contact type 'edit'. To delete a contact type 'delete'. To find a contact type 'find'. To view all your contacts type 'view all':"

# command = gets.chomp

# if command == "add"
# 	puts "Please type the contact's full name:"
# 	name = gets.chomp
# 	puts "Please type the contact's phone number:"
# 	number = gets.chomp
# 	puts "Please type the contact's email address:"
# 	email = gets.chomp
# 	puts "Is the contact a family member? Please answer with 'true' or 'false':"
# 	family = gets.chomp
# 	add_contact(db, name, number, email, family)
# elsif command == "edit"
# 	puts "Please type the full name of the contact you'd like to edit:"
# 	full_name = gets.chomp
# 	puts "To Edit the name type 'name'. To type the number enter 'phone_number'. To edit the email type 'email'. To change a contact's family status type 'family':" 
# 	info = gets.chomp
# 		if  info == "phone_number"
# 			puts "Please type the new phone number:"
# 			new_number = gets.chomp.to_i
# 			edit_contact(db, full_name, "name", info, new_number)		
# 		elsif info == "name"
# 			puts "Please type the new name:"
# 			new_name = gets.chomp
# 			edit_contact(db, full_name, "name", info, new_name)	
# 		elsif info == "email"
# 			puts "Please type the new email:"
# 			new_email = gets.chomp
# 			edit_contact(db, full_name, "name", info, new_email)	
# 		elsif info == "family"
# 			puts "Please type the new status:"
# 			new_status = gets.chomp
# 			edit_contact(db, full_name, "name", info, new_status)	
# 		else 
# 			puts "invalid information"
# 		end	
# elsif command == "delete"
# 	puts "Please type the full name of the contact you'd like to delete:"
# 	contact_name = gets.chomp
# 	delete_contact(db, "name", contact_name)
# elsif command == "find"
# 	puts "Please type the full name of the contact you'd like to find:"
# 	name_to_find = gets.chomp
# 	find_contact(db, "name", name_to_find)
# elsif command == "view all"
# 	view_all_contacts(db)
# else
# 	puts "invalid command"
# end