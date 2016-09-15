#define encrypt method
#assign empty string for a variable to store our return value in
#initialize index
#loop while index is smaller than encrypt variable
#make the index go to the next letter of the word beign called in method
#create condition for if the string has a space, to keep the space
	#if letter is a "z" it turns to "a" instead of "aa"
#otherwise add the new letter to our variable
#add counter to avoid infinite loop
#return our variable
#call our method (print to confirm it is working)

def encrypt(name)
	variable_y = ""
	i=0
	while i < name.length
		if name[i] == " "
			variable_y += " "
		elsif name [i] == "z" 
			variable_y += "a"
		else
		 variable_y += name[i].next
		end
		i += 1
	end
	variable_y
end

#puts encrypt("sword fish")

#define decrypt method that reverses the process above.
#assign empty string for a variable to store our return value in
#create a string with all the letters from the alphabet
#initialize index
#loop while index is smaller than the decrypt variable
#create condition for if the string has a space, to keep the space
#otherwise add the new letter to our variable
#add counter to avoid infinite loop
#return our variable
#call our method (print to confirm it is working)

def decrypt(name)
	variable_x = ""
	alph = "abcdefghijklmnopqrstuvwxyz"
	i=0
	while i < name.length
		if name[i]== " "
			variable_x += " "
		else 
			variable_x += alph[alph.index(name[i]) - 1]
		end	
	i+=1
	end
	variable_x
end 

#puts decrypt("sword fish")

#nested methods, why it works:
#this works becauce both methods are returning a value that can be used in the other method
	#(it wasn't returning when our code was only printing to the console and not returning a value)
#puts decrypt(encrypt("sword fish"))



#ask user if they want to decrypt or encrypt a word
puts "Hello, do you want to encrypt or decrypt a password today?"
#get word
user_input = gets.chomp

if user_input == "encrypt"
	puts "What word do you want to encrypt?"
	
	encrypt_word = gets.chomp
	variable_a = encrypt(encrypt_word)
	puts "Your encrypted word is #{variable_a}"
elsif user_input == "decrypt"
	puts "What word to you want to decrypt?"
	
	decrypt_word = gets.chomp
	variable_b = decrypt(decrypt_word)
	puts "Your decrypted word is #{variable_b}"
else
	puts "Invalid request"
end

#does the requested operation and exits

