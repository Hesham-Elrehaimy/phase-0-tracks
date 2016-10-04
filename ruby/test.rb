def counter
	puts "here's your number"
	yield
end

counter 3.times { puts "hi"}