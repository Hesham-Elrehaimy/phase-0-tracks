

#define the next_letter method which will be used to turn real names into fake ones and give it "name" as a parameter.
def next_letter(name)
#declare a variable to store an array which contains all the consonants in it.
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
#declare a variable to store an array which contains all the vowels in it.
	vowels = ['a', 'e', 'i', 'o', 'u'] 
#declare a variable to store a string which the letters of the fake name will be stored in it.
	x = ''
#initialize the value of the index at 0.   
  i = 0
#create a while loop which executes as long as the index is less than the lenght of the name string.  
  while i < name.length
#create a conditional statement for the case of a white space.
    if name[i] == " "
#it would be stored in the string as a space.    	
			x += " "
		
		
	elsif 
#create another condition in case the consonant is the letter "z" to avoid an edge case.		
		name[i] == "z" 
#it would be stored	in the string as the next consonant which is "b".	
			  x += "b"
			  
	elsif 
#create another condition in case the vowel is the letter "u" to avoid an edge case.		
		name[i] == "u" 
#it would be stored	in the string as the next vowel which is "a".		
			  x += "a"
			  
	elsif
#create another condition that checks if the letter exists in the array of consonants.		
		consonants.include? name[i]
#it would be stored in the string as the letter after it in the array of consonants.		
		  x += consonants[consonants.index(name[i]) + 1] 
		  
		
	elsif
#create another condition that checks if the letter exists in the array of vowels.		
		vowels.include? name[i]
#it would be stored in the string as the letter after it in the array of vowels.			
		  x += vowels[vowels.index(name[i]) + 1] 
		
#close the conditional statement.
	end	
#to avoid an infinit loop add 1 to the index counter so it reaches the length of the string and stops.	
 i += 1
#close the loop. 
end	  

#ask the method to return the value of the string which contains the fake name.
x
#close the method.
end
#declare a variable and assign to it an empty array in which the real names will be stored into.
real_names = []
#declare a variable and assign to it an empty array in which the fake names will be stored into.
fake_names = []

#print to the console a message asking a user to enter the real name they want to change to a fake one.
puts "Please enter a real name to turn into a fake one"
#assign the value of the user's input to the name variable and make all the letters lowercase.
name = gets.chomp.downcase
#add the name entered to the real_names array.
real_names.push(name)

#create a loop which executes until the user enters the word done.
until name == "done"
#create a conditional statement in case the user's input is not the word done (a name). 	
  if !(name == "done")
#declare a code_name variable and store in it the value produced from calling the next_letter with "name" as an argument. 	
     code_name = next_letter(name)
#use the .split method to split the full name string into an array that contains the first name and last name as 2 seperate items.
     code_name = code_name.split
#switch first name with the last name.
     code_name[0], code_name[1] = code_name[1], code_name[0]

#turn the code_name variable into a string that contains the last name and the first name with white space between them.
     code_name = (code_name[0] + ' ' + code_name[1])
#print the latest version of the code_name string.
     p code_name
#add the fake name produced to the fake_names array.
     fake_names.push(code_name)
#print to the console a message asking the user to enter another name. 
     puts "Please enter another name"
#assign the value of the user's input to the name variable and make all the letters lowercase.
     name = gets.chomp.downcase  
#add the name entered to the real_names array.
     real_names.push(name) 


#create another condition in case the user enters the word done.
  else
#set the value for the name variable to done to exit the loop. 	
  	 name == "done"
#close the conditional statement.
  end	
#close the loop.
end  

#delete the word 'done' from the real_names array.
real_names.delete('done')

#initialize the value for the index counter at 0.
i = 0

#create a while loop which executes as long as the index counter's value is less than the lenght of the real_name array. 
while 
    i < real_names.length
#print a message to the console that tells the real and fake names.    
    puts "#{fake_names[i]} is actually #{real_names[i]}."
#to avoid an infinit loop add 1 to the index counter so it reaches the length of the array and stops.	    
    i += 1 
#close the loop.    
end    
   

