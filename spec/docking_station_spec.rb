require 'docking_station'

describe DockingStation do

#  it 'should respond to release_bike when called' do
#    expect(subject).to respond_to :release_bike
#  end
  it { is_expected.to respond_to :release_bike}

  # it 'should create Bike when release bike is run and check working' do
  #   instance = DockingStation.new
  #   expect(instance.release_bike.working?).to eq true
  # end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

end
