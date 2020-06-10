class Client
    attr_accessor :name, :problem
    

    @@all = []
 
def initialize(name, problem)
    @name = name
    @problem = problem
    @@all << self
end

def self.all
    @@all
    binding.pry
end





end