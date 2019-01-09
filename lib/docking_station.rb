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
    self.full? ? (fail "Capacity is full") : @bikes << bike
  end

  def full?
    @bikes.count >= 20
  end

end
