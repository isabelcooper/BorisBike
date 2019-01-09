require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
   if @bikes.empty?
      fail "No bikes available"
   else
      @bikes.shift
    end
  end

  def dock(bike)
    @bikes << bike
  end

end
