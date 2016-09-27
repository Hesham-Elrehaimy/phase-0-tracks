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
end

puppy = Puppy.new

puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
p puppy.dog_years(3)
puts "Is the puppy hungry? #{puppy.hungry}"



