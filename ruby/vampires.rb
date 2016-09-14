puts "How many employees will be processed?"
applicants = gets.chomp

while applicants.to_i > 0

		
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp

puts "What year were you born?"
birth_year = gets.chomp

puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
garlic_bread = gets.chomp

puts "Would you like to enroll in the company’s health insurance? (yes/no)"
insurance = gets.chomp


current_year = 2016



if 
	name === "Drake Cula" || name === "Tu Fang"
	result = "Definitely a vampire."

elsif
    !(age.to_i == current_year.to_i - birth_year.to_i) && garlic_bread == "no" && insurance == "no"
    result = "Almost certainly a vampire."
elsif  
	!(age.to_i == current_year.to_i - birth_year.to_i) && (garlic_bread == "no" || insurance == "no")
	result = "Probably a vampire."
elsif 
	(age.to_i == current_year.to_i - birth_year.to_i) && (garlic_bread == "yes" || insurance == "yes")
    result = "Probably not a vampire."	
else
    result = "Results inconclusive."		

end


puts result

applicants = applicants.to_i - 1	


end



