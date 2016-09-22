#define a client variable and assign an empty hash to it
client = {}

#ask the user for the client's information 
puts "Please enter the client's name"
name = gets.chomp
client[:name] = name
puts "Please enter the client's phone number"
phone = gets.chomp
client[:phone] = phone
puts "Please enter the client's email"
email = gets.chomp
client[:email] = email
puts "How many children does the client have?"
children = gets.chomp.to_i
client[:children] = children
puts "What decor theme does the client prefer?"
decor_theme = gets.chomp
client[:decore_theme] = decor_theme
#turn the user's answer into a bolean
puts "Does the client require child proofing? (yes/no)"
child_proof = gets.chomp
if child_proof == "yes"
	client[:child_proof] = true 
else
	client[:child_proof] = false 
end	


p client

#give an option to the user to change an answer
puts "Would you like to make any changes? (yes/none)"
change = gets.chomp

#create a conditional statement in the case of the user wanting to chage something
   if !(change == "none")
      puts "Please enter the name of the key you would like to change"
#delare a variable in which the key the user wishes to change will be stored into
      new_key = gets.chomp
      puts "Please enter the answer you would like to change the old answer to"
#delare a variable in which the new answer will be stored into      
      new_value = gets.chomp
      client[new_key.to_sym] =new_value
#create another conditional statement in case the user does not want to change anything        
   else
#the client hash remains the same.   	
   	  client = client
   end

p client
