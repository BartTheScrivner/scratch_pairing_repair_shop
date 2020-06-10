class Store
    attr_accessor :location
    attr_reader
    attr_writer
 
    @@all = []
def initialize(location)
    @location = location
    @@all << self

end

def self.all
    @@all
end

def technicians
    Technician.all.select do |technician|
        technician.location == self
    end
end

def raise(technician_name, raise_amount)
     technician  = self.technicians.find{|technician| technician.name == technician_name}
    technician.hourly_rate += raise_amount
end

def assign_job(client,problem)
least_productive = self.technicians.min_by {|technician| technician.open_repairs.count}
RepairTicket.new(client,least_productive,problem)

end

end