require_relative("bus_stop")
class Bus

  attr_reader :route_number, :destination, :passengers
  attr_writer :destionation
  def initialize route_number, destination
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum Brum"
  end

  def number_of_passengers
    return @passengers.length
  end

  def pick_up_passenger(new_passenger)
    @passengers << new_passenger
  end

  def drop_off_passenger(passenger)
    @passengers.delete(passenger)
  end

  def remove_passengers
    @passengers = []
  end

  def broken
    @passengers.remove_passengers
  end

  def collect_all_passengers(bus_stop)
    # while bus_stop.queue.length >= 0
    #   pick_up_passenger(bus_stop.queue.pop)
    # end
    while bus_stop.queue.length > 0
      pick_up_passenger(bus_stop.queue.pop)
    end
  end

end
