require 'bike'

describe Bike do
  it { is_expected.to respond_to :working? }

#context 'bla' do
#  let (:check_bike_working) {"No"}
  it 'when user inputs yes, answer is received.' do
    bike = Bike.new
    allow($stdin).to receive(:gets).and_return("No")
    answer = $stdin.gets
    expect(answer).to eq("No")
  end

  it 'when user inputs yes, bike is no longer working' do
    bike = Bike.new
    bike.stub(:gets)
  end

#  end
end
