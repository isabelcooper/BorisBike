require 'docking_station'

describe DockingStation do

# Dock Test
 before (:each) do
   @station = DockingStation.new
 end

  it 'docks the bike' do
    @station.dock(bike = Bike.new)
    expect(@station.bikes).to include(bike)
  end

# Release_bike tests
  it 'releases working bikes' do
    @station.dock(Bike.new)
    bike = @station.release_bike
    expect(bike).to be_working
  end

  it 'returns an error if no bikes in the docking station' do
    expect {(@station.release_bike)}.to raise_error "No bikes available"
  end

  it 'returns the same bike that was docked' do
    @station.dock(bike = Bike.new)
    expect(@station.release_bike).to eq bike
  end

  it "doesn't accept bike if DockingStation's capacity is full" do
    @station.dock(Bike.new)
    expect {(@station.dock(Bike.new))}.to raise_error "Capacity is full"
  end


end
