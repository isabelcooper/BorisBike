require_relative 'bike'

class DockingStation
  attr_reader :bikes
  self::DEFAULT_CAPACITY = 20

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
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
