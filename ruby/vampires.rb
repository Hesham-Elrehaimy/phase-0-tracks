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

puts "Type any allergies you have one at a time and type done at the end"

allergies = gets.chomp

until allergies == "done"
    case
    when allergies == "sunshine"
      puts "Probably a vampire."
    break 
      
    else   
        puts "Any other allergies?"
        allergies = gets.chomp
    end    
    
end  


current_year = 2016



case 

when name == "Drake Cula" || name == "Tu Fang"
  puts "Definitely a vampire."
  break
when !(age.to_i == current_year.to_i - birth_year.to_i) && garlic_bread == "no" && insurance == "no"
  puts "Almost certainly a vampire."  
  break
  
when !(age.to_i == current_year.to_i - birth_year.to_i) && (garlic_bread == "no" || insurance == "no")
  puts  "Probably a vampire."  
  break
when (age.to_i == current_year.to_i - birth_year.to_i) && (garlic_bread == "yes" || insurance == "yes")
  puts  "Probably not a vampire."  
  break

else
puts  "Results inconclusive."    

end  



applicants = applicants.to_i - 1	


end


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
