class Listing

@@all = []

attr_accessor :city_name, :trips, :trip_count

def initialize(city_name)
@city_name = city_name
@@all << self

end

def guests
    array = []
    Trip.all.each do |x|
       if x.listing == self
            array << x.guest
        end
    end
    array
end

def trips
    array = []
    Trip.all.each do |x|
        if x.listing == self
            array << x
        end
    end
    array
end

def trip_count
    self.trips.count
  end

def self.all
    @@all

end

def self.find_all_by_city(city)
    self.all.select do |x|
        x.city_name == city
    end


end

def self.most_popular
 
 self.all.max {|a,b| a.trip_count <=> b.trip_count}

end








end