require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

 #Pry.start

 #### Repair Shop

##Sample Instances
#Clients
dave = Client.new("Dave")
esther = Client.new("Esther")
chine = Client.new("Chine")

#Technicians
paul = Technician.new("Paul")
maddie = Technician.new("Maddie")

#RepairTickets
repair_ticket_1 = RepairTicket.new(dave, paul,"broken screen")
repair_ticket_2 = RepairTicket.new(chine, maddie, "dead battery")
repair_ticket_3 = RepairTicket.new(dave, maddie, "new keyboard")


## Client

##.all
#repairs returns all repairs client has had
# puts dave.repairs.include?(repair_ticket_1)
# puts dave.repairs.count.eql?(2)

#open_repairs
# dave.open_repairs
#technicians
# dave.technicians

## Technician

##.all
#clients 
# pp maddie.clients 
#repairs
# puts paul.repairs.include?(repair_ticket_1)
#next_in_line

pp  maddie.next_in_line
pp maddie.next_in_line 
#close_ticket
# maddie.close_ticket(repair_ticket_2)
# puts repair_ticket_2.status

## Repair Ticket 

##.all
#status

##BONUS
#cost_estimate


#binding.pry 
0