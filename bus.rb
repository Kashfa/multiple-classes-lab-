class Bus

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum Brum"
  end

  def count_passengers
    return @passengers.count
  end

  def pick_up(name)
     @passengers << name
  end

  def drop_off(name)
     @passengers.delete(name)
  end

  def empty_bus()
    @passengers.clear
end
end 
