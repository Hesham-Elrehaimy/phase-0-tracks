# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define method with string parameter
  # turn the string into an array 
  # assign the parameters to grocery list hash with default quantity of 1
  # print the list to the console [can you use one of your other methods here?] - print method
# output: hash
def create_list(items)
    grocery_list = {}
    items.split.each do |item|
        grocery_list[item] = 1
    end
    grocery_list
end 
# grocery_list = create_list("carrots apples cereal pizza")
#create_list("carrots apples cereal pizza")
# Method to add an item to a list
# input: item name and default quantity
    # steps: 
    #set parameter of item and default quantity
    #assign the item to the list hash with default quantity 
# output: updated version of the hash after adding the new item 
def add_item(list, item, quantity=1)
    list[item] = quantity
end
# add_item(grocery_list, "tomatoes", 4)
#p grocery_list
# Method to remove an item from the list
# input: string of an item
    # steps:
    #check if item in list
    #if in list - delete
    #if not - print item not in list
    #return hash
# output: updated hash
def remove_item(list, item)
    if list.has_key?(item)
        list.delete(item)
    else 
        puts "Item is not on the list."
    end
end 
# remove_item(grocery_list, "tomatoes")
#p grocery_list
# Method to update the quantity of an item
# input:item and quantity 
    # steps: 
    #assign the given quantity to the given item in the hash 
    #return hash
# output: updated hash
def update_quantity(list, item, quantity)
    list[item] = quantity
end 
# update_quantity(grocery_list, "carrots", 7)
#p grocery_list
# Method to print a list and make it look pretty
# input: hash
    # steps:
    #set grocery list as parameter
    #iterate through the hash, print each item and quanity in a readable format 
# output: list of the items and quantities 
def print_list(list)
    list.each do |item, quantity|
        puts "You need to buy #{quantity} #{item}."
    end 
end 
# print_list(grocery_list)

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
  #Now I have a solid understanding of method arguments.


#User Interface for fun:
puts "Enter an item for your grocery list:"
    user_item = gets.chomp
    user_list = create_list(user_item)
    
user_item != 'done'
until user_item == 'done'
puts "Enter another item OR type 'done' when you are finished."
user_item = gets.chomp
    if user_item != 'done'
        add_item(user_list, user_item, 1)
    else
        user_item == 'done'
    end 
end 
p user_list
puts "Would you like to delete an item, add an item, or change the quantity of an item? Type 'none' to exit."
user_change_list = gets.chomp
if user_change_list == 'none'
    puts "Thank you for using the grocery list!" 
    print_list(user_list)
elsif user_change_list == "add"
    puts "Enter and item you'd like to add:"
    new_item = gets.chomp
    add_item(user_list, new_item, 1)
elsif user_change_list == "update"
    puts "Enter an item you'd like to update:"
    user_update = gets.chomp
    if user_list.has_key?(user_update)
        puts "Enter a new quantity:"
        new_quantity = gets.chomp
        update_quantity(user_list, user_update, new_quantity)
    else 
        puts "Item not on your list!"
    end 
elsif user_change_list == "remove"    
    puts "Enter the item you'd like to remove:"
        user_remove = gets.chomp
    if user_list.has_key?(user_remove)
        remove_item(user_list, user_remove)
    else
        puts "Item is not on your list!"
    end 
end 
print_list(user_list)