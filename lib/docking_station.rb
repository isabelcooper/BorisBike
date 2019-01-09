require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
   @bikes.empty? ? (fail "No bikes available") : @bikes.shift
  end

  def dock(bike)
    @bikes.count == 1 ? (fail "Capacity is full") : @bikes << bike
  end

end
