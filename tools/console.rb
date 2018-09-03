require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


g1 = Gym.new("Blink")
g2 = Gym.new("Equinox")
g3 = Gym.new("24 hour fitness")
g4 = Gym.new("Gold's")


l1 = Lifter.new("bryan", 1200)
l2 = Lifter.new("jim", 1250)
l3 = Lifter.new("nigel", 900)
l4 = Lifter.new("sarah", 1100)
l5 = Lifter.new("rachel", 850)

m1 = Membership.new(30, g1, l1)
m2 = Membership.new(20, g3, l2)
m3 = Membership.new(200, g2, l4)
m4 = Membership.new(60, g4, l5)
m5 = Membership.new(100, g3, l1)
m6 = Membership.new(70, g4, l3)


binding.pry
