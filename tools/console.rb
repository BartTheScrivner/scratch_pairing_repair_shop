require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Pry.start

#Gym Tests














# #Lyft Tests

#   ##Passengers
# jerry = Passenger.new("Jerry")
# morty = Passenger.new("Morty")
# summer = Passenger.new("Summer")
# beth = Passenger.new("Beth") 
# birdperson = Passenger.new("Birdperson")

#   ##Drivers
# rick = Driver.new("Rick")
# mike = Driver.new("Krembopulus Michael")
# bob = Driver.new("Bob Belcher")

#   ##Rides
# rick_takes_jerry = Ride.new(55.0, rick, jerry)
# rick_takes_morty = Ride.new(22.0, rick, morty)
# rick_takes_summer = Ride.new(55.0, rick, summer)
# mike_takes_beth = Ride.new(22.0, mike, beth)
# mike_takes_birdperson = Ride.new(22.0, mike, birdperson)
# mike_takes_jerry = Ride.new(55.0, mike, jerry)
# bob_takes_morty = Ride.new(22.0, bob, morty)
# bob_takes_summer = Ride.new(22.0, bob, summer)
# bob_takes_beth = Ride.new(25.0, bob, beth)

# puts "#### Passenger"

# puts "#drivers returns all drivers a passenger has ridden with"
# puts morty.drivers.include?(bob)
# puts "#rides returns all rides a passenger has been on"
# puts morty.rides.count.eql?(2)
# puts ".all returns an array of all passengers"
# puts Passenger.all.count.eql?(5)
# puts "#total_distance should calculate the total distance the passenger has travelled with the service"
# puts morty.total_distance.eql?(44.0)
# puts ".premium_members should find all passengers who have travelled over 100 miles with the service"
# puts Passenger.premium_members.include?(jerry)

# puts "#### Driver"

# puts "#passengers returns all passengers a driver has had"
# puts rick.passengers.include?(morty)
# puts "#rides returns all rides a driver has made"
# puts rick.rides.include?(rick_takes_summer)
# puts rick.rides.count.eql?(3)
# puts ".all returns an array of all drivers"
# puts Driver.all.count.eql?(3)
# puts ".mileage_cap(distance) takes an argument of a distance (float) and returns all drivers who have exceeded that mileage"
# puts Driver.mileage_cap.include?(rick)

# puts "#### Ride"

# puts "#passenger returns the passenger object for that ride"
# puts rick_takes_morty.passenger == morty
# puts "#driver returns the driver object for that ride"
# puts bob_takes_beth.driver == bob
# puts ".average_distance should find the average distance of all rides"
# puts Ride.average_distance.to_i == 33
# puts Ride.average_distance.to_i

###################################################################################

# ##Airbnb Tests
#   #Listings
# portland = Listing.new("Portland")
# seattle = Listing.new("Seattle")
# nyc = Listing.new("New York City")

#   #Guests
# bob = Guest.new("Bob")
# tammy = Guest.new("Tammy")
# billy = Guest.new("Billy")

#   #Trips
# bobdoesportland = Trip.new("January", portland, bob)
# bobdoesportland_round_two = Trip.new("October", portland, bob)
# puts " Bob is always downn!!!!"
# bobdoesnyc = Trip.new("February", nyc, bob)
# bobdoesseattle = Trip.new("March", seattle, bob)
# tammydoesportland = Trip.new("April", portland, tammy)
# # tammydoesnyc = Trip.new("May", nyc, tammy)
# # tammydoesseattle = Trip.new("June", seattle, tammy)
# billydoesportland = Trip.new("July", portland, billy)
# billydoesnyc = Trip.new("August", nyc, billy)
# billydoesseattle = Trip.new("September", seattle, billy)



# puts "#guests
#  returns an array of all guests who have stayed at a listing"
# puts portland.guests.include?(bob)

# puts "#trips
#  returns an array of all trips at a listing"
# puts portland.trips.include?(bobdoesportland)

# puts "#trip_count
#    returns the number of trips that have been taken to that listing"
# puts portland.trip_count.eql?(4)

# puts ".find_all_by_city(city)
#    takes an argument of a city name (as a string) and returns all the listings for that city"
# puts Listing.find_all_by_city("Portland").include?(portland)

# puts ".most_popular
#  finds the listing that has had the most trips"

# puts Listing.most_popular.eql?(portland)

# puts "#listings
#  returns an array of all listings a guest has stayed at
# "
# puts bob.listings.include?(portland)

# puts ".pro_traveller
#  returns an array of all guests who have made over 1 trip"

# puts Guest.pro_traveller.include?(bob)

# puts !Guest.pro_traveller.include?(tammy)

# puts ".find_all_by_name(name)
#  takes an argument of a name (as a string), returns the all guests with that name"

# puts Guest.find_all_by_name("tammy").include?(tammy)
