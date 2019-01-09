require 'docking_station'

describe DockingStation do

#  it 'should respond to release_bike when called' do
#    expect(subject).to respond_to :release_bike
#  end
  it { is_expected.to respond_to :release_bike }

  # it 'should create Bike when release bike is run and check working' do
  #   instance = DockingStation.new
  #   expect(instance.release_bike.working?).to eq true
  # end

  it 'releases working bikes' do
    station = (DockingStation.new)
    station.dock(Bike.new)
    bike = station.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to :bikes }

  it 'docks the bike' do
    bike = subject.release_bike
    subject.dock(bike)
    expect(subject.bikes).to include(bike)
  end

  it 'returns an error if no bikes in the docking station' do
    docking_station = DockingStation.new
    expect {(docking_station.release_bike)}.to raise_error "No bikes available"
  end

end
