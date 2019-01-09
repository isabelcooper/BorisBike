class Bike

  def initialize
    @working = true
  end

  def working?
    @working
  end

  def check_bike_working
    puts "Is the bike working?"
    answer = gets.chomp
    @working = false if answer == "No"
  end

#  def use_bike
#  end
end
