class Santa
	attr_writer :gender
	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :age
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "\r\n Initializing Santa instance ..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!" 
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!" 
	end

	def celebrate_birthday
		@age += 1
	end
	
	def get_mad_at(reindeer)
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
		p @reindeer_ranking
	end
end

clause = Santa.new("female", "white")
clause.speak
clause.eat_milk_and_cookies('Oreo')
clause.celebrate_birthday
p clause.age
clause.get_mad_at('Vixen')
clause.gender = "male"
p clause.ethnicity

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
i = 1
100.times do 
	santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	santa.age = rand(140)
	puts "Santa number #{i} is a #{example_ethnicities.sample} #{example_genders.sample}. This santa is #{santa.age} years old and has reindeers named #{santa.reindeer_ranking} ordered from most to least favorite."
	i += 1
end

