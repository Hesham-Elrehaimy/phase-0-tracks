# module Shout
#   def self.yell_angrily(words)
#   	words + "!!!" + " :("
#   end		

#   def self.yelling_happily(words)
#   	words + "!!!" + " :D"
#   end
# end

# p Shout.yell_angrily("I am so angry")
# p Shout.yelling_happily("I am so happy")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end
	
	def yelling_happily(words)
		words + "!!!" + " :D"
	end
end

class Adult
	include Shout
end

class Kid
	include Shout
end

adult = Adult.new
p adult.yell_angrily("Life is not fair")

kid = Kid.new
p kid.yelling_happily("Life is awesome")




