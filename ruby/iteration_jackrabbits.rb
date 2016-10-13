array = ["apple", "banana", "mango"]

hash = {"Tom Hanks" => "forrest gump", "Denzel" => "Remember the Titans"}

p hash

array.each do |x|
	p x.upcase
end

array.map! do |x|
	x.length
end

p array

hash.each do |key, value|
	puts "The best role for #{key} was in the movie #{value.ord}."
end