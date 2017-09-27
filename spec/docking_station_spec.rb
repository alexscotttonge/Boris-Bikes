require 'docking_station'

describe DockingStation do
  it 'DockingStation instances respond to method release_bike' do
    expect(subject).to respond_to :release_bike
  end
  it "Creates instance of Bike class when release_bike method is called" do
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end
end

describe Bike do
  it 'responds true when working? method is called on an instance of Bike' do
    expect(subject.working?).to be true
  end
end
