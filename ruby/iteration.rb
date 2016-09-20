# def hello
# 	puts "Hello, how are you?"
# name1 = "Callie"
# name2 = "Hesham"
# yield(name1, name2)
# end

# hello {|name1, name2| puts " Hello #{name1} and #{name2}"}

# letters = ["a", "b", "c", "d", "e"]
# new_letters = []

# puts "Original data:"
# p letters
# p new_letters

# letters.each do |letter|
# 	new_letters << letter.next
# end	

# puts "After .each call:"
# p letters
# p new_letters
# numbers = {1 => "one", 2 => "two", 3 => "three"}	


# numbers.each do |digit, word|
# 	puts "#{digit} is spelled out as #{word}"
# end



# letters = ["a", "b", "c", "d", "e"]

# puts "Original data:"
# p letters

# letters.map! do |letter|
# 	puts letter 
# 	letter.next
# end

# puts "After .map call:"
# p letters

##########

# hollywood = ["Al Pachino", "Robert Deniro", "Brad Pitt", "Matt Damon"]

# puts hollywood
# hollywood.each do |actor|
# end 


# hollywood.map! do |actors|
# 	p actors.capitalize
# end

# hollywood_actors = {
# 	"Al Pachino" => "Michael Corlione",
# 	"Robert Deniro" => "Vito Corlione",
# 	"Brad Pitt" => "Tyler Durden",
# 	"Matt Damon" => "Jason Borne"
# }

# puts hollywood_actors
# hollywood_actors.each do |actors, roles|
# end 


# 1
numbers_array = [1, 2, 3, 5, 6, 7]
numbers_array.delete_if {|number| number < 5}
p numbers_array

numbers_hash = {
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"five" => 5, 
	"six" => 6, 
	"seven" => 7
}

numbers_hash.delete_if {|string, number| number < 5}
p numbers_hash

# 2
numbers_array = [1, 2, 3, 5, 6, 7]
numbers_array.keep_if {|number| number < 5}
p numbers_array

numbers_hash = {
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"five" => 5, 
	"six" => 6, 
	"seven" => 7
}

numbers_hash.keep_if {|string, number| number < 5}
p numbers_hash

# 3
numbers_array = [1, 2, 3, 5, 6, 7]
result = numbers_array.select do |number|
  number < 5
end
p result

numbers_hash = {
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"five" => 5, 
	"six" => 6, 
	"seven" => 7
}
result = numbers_hash.select do |string, number|
  number < 5
end
p result


# 4
numbers_array = [1, 2, 3, 5, 6, 7]
numbers_array.reject!{|number| number < 3}
p numbers_array

numbers_hash = {
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"five" => 5, 
	"six" => 6, 
	"seven" => 7
}

numbers_hash.reject!{|string, number| number < 3}
p numbers_hash






















