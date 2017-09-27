require 'docking_station'

describe DockingStation do
  it 'DockingStation instances respond to method release_bike' do
    expect(subject).to respond_to :release_bike 
  end

end
