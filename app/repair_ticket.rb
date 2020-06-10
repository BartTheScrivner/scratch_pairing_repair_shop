class RepairTicket
    attr_accessor :client, :technician, :problem, :status
    @@all = []

    def initialize (client, technician, problem)
        @client = client
        @technician = technician
        @problem = problem
        @status = "open"
        @@all << self
    end

    def add_price(problem)
 
    end

    def self.all
      @@all
    end


end