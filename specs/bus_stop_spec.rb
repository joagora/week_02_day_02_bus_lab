require("minitest/autorun")
require_relative("../bus_stop")



class TestBus < MiniTest::Test

  def setup
    @bus_stop = BusStop.new("Forest Road")
    @passenger_1 = Passenger.new("Mike", "82")
    @bus = Bus.new("Heymarket", "34")
  end

  def test_add_passenger
    expected = 1
    @bus_stop.add_passenger_to_queue(@passenger_1)
    actual = @bus_stop.queue.length
    assert_equal(expected, actual)
  end

end
