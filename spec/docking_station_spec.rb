require 'docking_station'

describe DockingStation do

# Dock Test
 before (:each) do
   @station = DockingStation.new
   @default_capacity = (DockingStation::DEFAULT_CAPACITY)
   DockingStation.send(:public, *DockingStation.private_instance_methods)
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
    @default_capacity.times{(@station.dock(Bike.new))}
    expect {(@station.dock(Bike.new))}.to raise_error "Capacity is full"
  end

  it 'sets custom capacity' do
    station10 = DockingStation.new(10)
    expect(station10.capacity).to eq 10
  end

  it 'throws error on 10 if custom capacity is 10' do
    station10 = DockingStation.new(10)
    (station10.capacity).times{(station10.dock(Bike.new))}
    expect {(station10.dock(Bike.new))}.to raise_error "Capacity is full"
  end

# Full method
  it 'full? method is true when station is full' do
    @default_capacity.times{(@station.dock(Bike.new))}
    expect(@station.full?).to eq true
  end

  it 'empty? method is true when station is empty?' do
    expect(@station.empty?).to eq true
  end

end
