require_relative 'Bike'

class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail('No bikes left!') if empty?
    @bikes.pop
  end

  def dock(bike)
    fail('Station full!') if full? # guard method to prevent code going any further if the condition is met
    @bikes << bike
    @bike = bike
  end

  private

  def full?
    @bikes.length == 20
  end

  def empty?
    @bikes.empty?
  end

end
