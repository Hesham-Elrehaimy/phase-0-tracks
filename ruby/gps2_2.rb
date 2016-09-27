# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
	# define the method
	# give a pramater (list)
	# split the list string after each space.
	# turn each element in the split array into a key for the new hash 
	# set default quantity
	# print the list to the console [can you use one of your other methods here?]
# output: the method returns a hash which contains items .
  

def make_list(list)

	new_list = list.split


	grocery_list = {}

	new_list.each do |item|
		grocery_list[item] = 1

	end
  grocery_list
 
end	

grocery_list = make_list("carrots apples cereal pizza")

# p grocery_list

############

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # define the method
  # give it parameters of a list an item to add and its quantity 
  # return the updated list
# output: an updated version of the hash with the new item added to it.  
  

def add_item (list, item, quantity = 1)

    list[item] = quantity 

    list 

end

grocery_list = add_item(grocery_list, "water", 3)
# p grocery_list


 ######
   
# Method to remove an item from the list
# input: a key on list

# steps:
	# define the method
	# give it the paramaters of a list and an item
    # delete the item given as an argument
    #return updated list
# output:
    #an updated version of the hash with the item removed

def delete_item(list, item)   
 	list.delete(item)
 	list
end

grocery_list = delete_item(grocery_list, "carrots")   

# p grocery_list

##### 

# Method to update the quantity of an item
# input: The item which needs to be updated and its new quantity

# steps:
	#define the method
	#give it parameters of a list, an item, and a quantity 
	#update the value of the item
	#return the updated list
# output: an updated version of the hash with 

def update_quantity (list, item, quantity)
	list[item] = quantity
    list
end

grocery_list = update_quantity(grocery_list, "pizza", 7)    	

# p grocery_list



# Method to print a list and make it look pretty
# input: a list
# steps:
	#define the method
	#give it the paramater of a list
	#print EACH item in the hash and how much of it will be purchased
# output: messages containing each item and how much of it to be purchased

def print_list(list)
	list.each do |item, quantity|
		p "You need to purchase #{quantity} unit(s) of #{item}"
	end
end

# print_list(grocery_list)




new_list = make_list(" ")

add_item(new_list, "Lemonade", 2)
add_item(new_list, "Tomatoes", 3)
add_item(new_list, "Onions", 1)
add_item(new_list, "Ice Cream", 4)

delete_item(new_list, "Lemonade")

update_quantity(new_list, "Ice Cream", 1)

print_list(new_list)




# What did you learn about pseudocode from working on this challenge?
  #It should only discribe the steps that I'll be taking without using any coding terms.
# What are the tradeoffs of using arrays and hashes for this challenge?
  #It was more helpful to use a hash for this challenge because it needed a key and a value which wouldn't have been possible using an array.
# What does a method return?
  # The value of the variable typed before the end of the method
# What kind of things can you pass into methods as arguments?
  #strings, integers, boleans, or defined variables.
# How can you pass information between methods?
  # by making them into arguments
# What concepts were solidified in this challenge, and what concepts are still confusing?
  #Now I have a solid understanding of adding items to a hash.
