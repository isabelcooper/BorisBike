require 'docking_station'

describe DockingStation do

# Dock Test

  it 'docks the bike' do
    station = DockingStation.new
    station.dock(bike = Bike.new)
    expect(station.bikes).to include(bike)
  end

# Release_bike tests
  it 'releases working bikes' do
    station = (DockingStation.new)
    station.dock(Bike.new)
    bike = station.release_bike
    expect(bike).to be_working
  end

  it 'returns an error if no bikes in the docking station' do
    station = DockingStation.new
    expect {(station.release_bike)}.to raise_error "No bikes available"
  end

  it 'returns the same bike that was docked' do
    station = DockingStation.new
    station.dock(bike = Bike.new)
    expect(station.release_bike).to eq bike
  end

end
