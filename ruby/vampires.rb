puts "How many employees would you like to process?"
applicants = gets.chomp

current_year = 2016

while 
  applicants.to_i > 0

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


vampire = false
until
   vampire
     if 
        allergies == "sunshine"
        puts "probably a vampire."
        vampire = true
      
     elsif
        allergies == "done"
        vampire = true
      
     else
        puts "Any other allergies?"
        allergies = gets.chomp
      
      
     end 
  
  

end


if !(allergies == "sunshine")


  if
    name.downcase == "drake cula" || name.downcase == "tu fang"
    puts "Definitely a vampire." 

  elsif
    !(age.to_i == current_year.to_i - birth_year.to_i) && garlic_bread == "no" && insurance == "no"
    puts "Almost certainly a vampire."

  elsif
    !(age.to_i == current_year.to_i - birth_year.to_i) && (garlic_bread == "yes" || insurance == "yes")
    puts  "Probably a vampire."

  elsif
    (age.to_i == current_year.to_i - birth_year.to_i) && (garlic_bread == "yes" || insurance == "yes")
    puts  "Probably not a vampire."




  else
    puts  "Results inconclusive." 
  end

end
  

  applicants = applicants.to_i - 1 

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."