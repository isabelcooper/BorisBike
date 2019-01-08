require 'docking_station'

describe DockingStation do

#  it 'should respond to release_bike when called' do
#    expect(subject).to respond_to :release_bike
#  end
  it { is_expected.to respond_to :release_bike}
  it 'should create Bike when release bike is run'
    instance = DockingStation.new
    instance.release_bike

end
