require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

 #Pry.start

paul = Technician.new("Paul")
maddie = Technician.new("Maddie")

dave = Client.new("Dave", "broken screen")
esther = Client.new("Esther", "microphone")

repairticket1 = Repairticket.new(dave,paul,"broken screen")


print repairticket1

#binding.pry 
0