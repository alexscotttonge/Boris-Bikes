require 'docking_station'

describe DockingStation do
  subject(:docking_station) { DockingStation.new }
  it 'DockingStation instances respond to method release_bike' do
    expect(docking_station).to respond_to :release_bike
  end
  it "Creates instance of Bike class when release_bike method is called" do
    expect(docking_station.release_bike).to be_an_instance_of(Bike)
  end
  it "responds true when working? method is called on an instance of Bike" do
    bike = docking_station.release_bike
    expect(bike).to be_working
  end
   it "DockingStation can dock a bike" do
     expect(docking_station).to respond_to(:dock).with(1).argument
   end
end

# describe Bike do
#   it 'responds true when working? method is called on an instance of Bike' do
#     expect(subject.working?).to be true
#   end
# end
