# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#    def self.yelling_happily(words)
#     words + "!!!" + " :D"
#   end
# end

# p Shout.yell_angrily("This is the worst day ever")
# p Shout.yelling_happily("Everything is amazing")


module Shout
  def yelling_angrily(words)
  	words + "!!!" + " :("
  end
  
  def yelling_happily(words)		
  	words + "!!!" + " :D"
  end
end

class Man  	
	include Shout
end

class Woman
    include Shout
end

man = Man.new
p man.yelling_angrily("This is unacceptable")
p man.yelling_happily("I am having a great time")

woman = Woman.new
p woman.yelling_angrily("Oh no you didn't")
p woman.yelling_happily("I am so happy")    	