require_relative 'Bike'

class DockingStation

  def release_bike
    Bike.new
  end

  def dock(bike)
    bike
  end

end
