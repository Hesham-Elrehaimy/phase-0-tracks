array = ["apple", "banana", "mango", "pineapple", "watermelon", "palm", ]

hash = {"Tom Hanks" => "forrest gump", "Denzel" => "Remember the Titans"}

p hash

array.each do |fruit|
	p x.upcase
end

array.map! do |fruit|
	x.length
end

p array

hash.each do |key, value|
	puts "The best role for #{key} was in the movie #{value.ord}."
end

array.delete_if do |fruit|
	fruit < 6
end

p array

hash.delete_if do |key|
hash[key].length < 13
end

p hash

array.keep_if do |x|
	x >= 6
end

p array

hash.keep_if do |key|
	hash[key].length > 13
end

p hash

array.select! do |x|
	x > 6
end

p array

hash.select! do |key|
	hash[key].length > 13
end

p hash

array.reject! do |x|
	x < 10
end	

p array

hash.reject! do |key|
	hash[key].length < 13
end

p hash