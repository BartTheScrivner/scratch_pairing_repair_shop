class Client
    attr_accessor :name
    @@all = []
 
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def repairs
        RepairTicket.all.select {|repair| repair.client == self}
    end

    def open_repairs
        self.repairs.select {|repair| repair.status == "open"}
    end

    def technicians
        self.repairs.map {|repair| repair.technician }
        binding.pry
    end



end