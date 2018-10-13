require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end




sally = Guest.new("Sally")
jenny = Guest.new("Jenny")
judith = Guest.new("Judith")
dan = Guest.new("Dan")
jim = Guest.new("Jim")


dubai = Listing.new("Dubai")
paris = Listing.new("Paris")
lagos = Listing.new("Paris")
london = Listing.new("London")
sydney = Listing.new("Sydney")



trip1 = Trip.new(sally, dubai)
trip2 = Trip.new(jenny, lagos)
trip3 = Trip.new(judith, sydney)
trip4 = Trip.new(dan, paris)
trip5 = Trip.new(jim, sydney)
trip6 = Trip.new(jenny, london)
trip7 = Trip.new(jim, paris)














Pry.start




