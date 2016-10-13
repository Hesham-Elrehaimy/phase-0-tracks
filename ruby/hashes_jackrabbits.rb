client = {}

puts "What is the client's name?"
client[:name] = gets.chomp
puts "What is their address?"
client[:address] = gets.chomp
puts "How many children does the client have?"
client[:children] = gets.chomp.to_i
puts "Does the client require childproofing? yes/no"
child_proofing = gets.chomp
if child_proofing == 'yes'
	client[:childproofing] = true
else
    client[:childproofing] = false
end    	

puts "What are their favorite colors? type 'done' when you are finish:"
    
client[:colors] = []
color = "" 
    until color == 'done'
    	color = gets.chomp
	    if !(color == 'done') 	
	    	client[:colors] << color
	    else
	        color == 'done'	
		end    
	end
puts "What decor theme would the client prefer?"
client[:decor_theme] = gets.chomp		
p client
puts "Enter an input you would like to change or type 'none' if you are saticfied with your input:"
change = gets.chomp
	if !(change == 'none')
		puts "Enter the new value:"
		new_value = gets.chomp
	    client[change.to_sym] = new_value
	    p client
	else
	    p client
	end         
