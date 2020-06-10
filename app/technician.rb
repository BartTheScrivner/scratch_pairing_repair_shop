class Technician 

attr_accessor
attr_reader :name
attr_writer

@@all = []
 
def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all 
end





end