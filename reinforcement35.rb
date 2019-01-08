
class Location

  def initialize(name)
    @name = name
  end

  def name
    return @name
  end

end

class Trip

  def initialize
    @stops = []
  end

  def stops
    @stops
  end

  def add_stops(location)
    @stops << location
  end

  def log
    puts "Begin trip."
    @stops.each_cons(2) do |a|
      puts "Travelled from #{a[0].name()} to #{a[1].name()}."
    end
    puts "End trip."
  end

end


toronto = Location.new("Toronto")
ottawa = Location.new("Ottawa")
vancouver = Location.new("Vancouver")
calgary = Location.new("Calgary")
halifax = Location.new("Halifax")

my_trip = Trip.new()

my_trip.add_stop(Toronto)
my_trip.add_stop(Ottawa)
my_trip.add_stop(Vancouver)
my_trip.add_stop(Calgary)
my_trip.add_stop(Halifax)

my_trip.log()
