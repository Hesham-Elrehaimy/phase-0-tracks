#release 0
#input: full name string
#proccess: create a method that takes a name as a parameter:
	#switch first name with last name:
		#turn the full name string into an array containing two elements, the first name and the last name
		#reverse the two elements of the array
		#turn it into a string again
		#store it in a new variable
	#change every constanent to the next constanent and the every vowel to the next vowel
		#create two strings
			#one contains all the constanents and the other contains all the vowels
			#turn them into arrays of letters
		#turn the reversed full name into an array of letters
		#iterate through the elements of the array
			#change the value of every constanent in the reversed name array to next constanent in the constanents
			#do the same with the vowels
			#make a condition for edge cases
		#store the new letters in a new name string 	
#output: full name string
	#the first name and last name switching places
	#each constanent replaced with the constanent after it
	#each vowel replaced with the vowel after it 		

full_name = "Fulicia Torrez"
def name_faker(name)	
	reversed_name = name.downcase.split(' ').reverse.join(' ')
	constanents = "bcdfghjklmnpqrstvwxyz".split('')
	vowels = "aeiou".split('')
	reversed_name_array = reversed_name.split('')
	new_name = ""
	reversed_name_array.each do |letter|
		if letter == " "
			new_name += " "
		elsif letter == constanents[-1]
			new_name += constanents[0]
		elsif letter == vowels[-1]
			new_name += vowels[0]
		elsif constanents.include?(letter)
		    new_name += constanents[constanents.index(letter) + 1]
		elsif vowels.include?(letter)
		    new_name += vowels[vowels.index(letter) + 1]
		end        					
	end
	new_name
end	

#relsease 1
#input: a real name
#proccess:
	# turn real names to fake names
		#ask the user to enter a name to turn into a fake name
		#change the real name into a fake name
		#print the fake name
	#keep asking the user for another name 
		#give the user the fake names
		#stop asking when the user types 'done'
#output: 
	#a fake name

#relsease 2
#input: real names and fake names
#proccess:
	#create a hash containing the real name and the fake name as key and value
	#store the real names the user enters and the fake names generated in the hash
	#iterate through the hash to print the real name and fake name
#output: a printed statement containing the real name and fake name

names = {}	

puts "Enter a real name you want to turn into a fake name:"
real_name = gets.chomp
names[real_name.to_sym] = name_faker(real_name)
puts name_faker(real_name)

until real_name == 'done'
	puts "Enter another name or type 'done' if you're finished:"
	real_name = gets.chomp
		if !(real_name == 'done')
		names[real_name.to_sym] = name_faker(real_name)
		puts name_faker(real_name)
	else
		real_name == 'done'
	end	
end	

names.each do |real_name, fake_name|
	puts "#{real_name} is actually #{fake_name}"
end




