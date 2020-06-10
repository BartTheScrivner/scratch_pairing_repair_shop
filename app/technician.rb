class Technician 

attr_accessor :location, :hourly_rate
attr_reader :name
attr_writer

@@all = []
 
def initialize(name,location,hourly_rate = 20)
    @name = name
    @location = location
    @@all << self
    @hourly_rate = hourly_rate
    
end

def self.all
    @@all 
end

def repairs
    RepairTicket.all.select {|repair| repair.technician == self}
end 

def clients
    self.repairs.map {|repair| repair.client}
end 

def open_repairs
    self.repairs.select {|repair| repair.status == "open"}
end 

def next_in_line
    if self.current_repair 
        self.close_ticket(self.current_repair)
    end 
    current_ticket = self.open_repairs.first 
    if current_ticket.status == "open"
        current_ticket.status = "in process"
    end 
    return current_ticket 
end 

def close_ticket(repair_ticket)
    if repair_ticket.status == "in process"
        repair_ticket.status = "closed"
    end 
end 

def current_repair
    self.repairs.find {|repair| repair.status == "in process"}
end 

end