require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity
  self::DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
   empty? ? (fail "No bikes available") : @bikes.shift
  end

  def dock(bike)
    full? ? (fail "Capacity is full") : @bikes << bike
  end


private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
