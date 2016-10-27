# Virus Predictor

# I worked on this challenge [with: Callie Tomlinson ].
# We spent 1 hour on this challenge.

# EXPLANATION OF require_relative
#require relative(realtive path) acess your own files
#require(full path) allows you to access modules (Math, Time, etc.)
require_relative 'state_data'

class VirusPredictor

  #intializes a new instance of the class with 3 different parameters - and declares the class attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#calls the predicted_deaths and speed_of_spread methods with the attributes as arguments(bridge to other methods)
  def virus_effects
    puts "#{@state} will lose #{predicted_deaths} number of people in this outbreak and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private
  #purpose of private is to make the predicted deaths method unavailable from outside the class 

#calcluates the predicted number of deaths depending on the state's population density 
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      num = 0.4
    elsif @population_density >= 150
      num = 0.3
    elsif @population_density >= 100
      num = 0.2
    elsif @population_density >= 50
      num = 0.1
    else
      num = 0.05
    end
number_of_deaths = (@population * num).floor

  end

#calcluates the potential speed that the virus would spread, based on a state's popluation density
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

#print out calculation of all 50 states
STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end