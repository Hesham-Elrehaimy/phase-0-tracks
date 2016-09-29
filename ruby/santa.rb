class Santa

	attr_reader :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age 

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	 end
     
    def eat_milk_and_cookies(cookie)
    	puts "That was a good #{cookie}!"     	
     end

    def initialize(gender, ethnicity)
    	puts "Initializing Santa instance ..." 
    	@gender = gender    	
    	@ethnicity = ethnicity
    	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    	@age = 0
     end 

    def celebrate_birthday
    	
    	@age = @age + 1
   	
    end

    def get_mad_at(reindeer)

    	@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
    	
    end



end

claus = Santa.new("male", "white")
claus.speak
claus.eat_milk_and_cookies("Oreo")
claus.celebrate_birthday
claus.get_mad_at("Vixen")
puts "claus is #{claus.ethnicity} and he is #{claus.age} years old"
claus.gender = "female"

p claus

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do 
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end


i = 1

santas.each do |santa|
     santa.age = rand(140)
	puts "Santa number #{i} is a #{example_ethnicities.sample} #{example_genders.sample}. This santa is #{santa.age} years old and has reindeers named #{santa.reindeer_ranking} ordered from most to least favorite."
i += 1
end





