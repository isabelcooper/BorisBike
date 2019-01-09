require 'bike'

describe Bike do

before (:each) do
  @bike = Bike.new
end

  it { is_expected.to respond_to :working? }

  it 'when user inputs yes, bike is no longer working' do
    allow(@bike).to receive(:gets).and_return("No")
    @bike.check_bike_working
    expect(@bike.working?).to eq false
  end

#  end
end
