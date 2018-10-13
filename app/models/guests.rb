class Guest

attr_accessor :name, :listings, :trip_count, :trips
@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def listings
    array = []
    Trip.all.each do |x| 
       if  x.guest == self 
            array << x.listing
       end
    end
    array
end

def  trips
    Trip.all.select {|x|x.guest == self}
end

def trip_count
    Trip.all.count{|x| x.guest == self}
end

def self.all
    @@all
end

def self.pro_traveller
    self.all.select {|x| x.trip_count > 1}
end

def self.find_all_by_name(name)
    self.all.select {|x| x.name == name}
end











end