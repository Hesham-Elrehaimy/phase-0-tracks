class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
  int.times	{puts "Woof!"} 
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(int)
  	age = int * 7
  end

  def hungry
   true
  end

  def initialize

  	puts "Initializing new puppy instance ..."
  	
  end
end

puppy = Puppy.new

puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
p puppy.dog_years(3)
puts "Is the puppy hungry? #{puppy.hungry}"


class Cats

  def initialize
  	puts "Initializing new cat instance ..."
  end

  def speak(int)

  	int.times	{puts "Meow!"} 
  	
  end

  def name(str)

  	str
  end	

end

# cat = Cats.new
# puts "My name is #{cat.name("Fluffy")}"
# cat.speak(3)


instances = []

i = 0

while i < 50

instances << Cats.new

i += 1

end


i = 1
instances.each do |cat|

	cat.speak(2)
	puts "#{cat.name("Fluffy")} #{i}"
i += 1	
end












