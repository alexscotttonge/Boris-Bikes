require_relative 'Bike'

class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail('No bikes left!') if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    @bikes << bike
    @bike = bike
  end

end
