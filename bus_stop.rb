require_relative("passenger")
require_relative("bus")
class BusStop
  attr_reader :name, :queue
  def initialize(name)
    @name = name
    @queue = []
  end

  def add_passenger_to_queue(new_passenger)
    @queue << new_passenger
  end


end
