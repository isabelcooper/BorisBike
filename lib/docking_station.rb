require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
   empty? ? (fail "No bikes available") : @bikes.shift
  end

  def dock(bike)
    full? ? (fail "Capacity is full") : @bikes << bike
  end

private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
