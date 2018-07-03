require("minitest/autorun")
require_relative("../bus")


class TestBus < MiniTest::Test
  def setup
    @bus = Bus.new("22", "Ocean Terminal")
    @passenger_1 = Passenger.new("Mike", "22")
    @passenger_2 = Passenger.new("John", "23")
    @bus_stop = BusStop.new("Heymarket")
  end

  def test_bus_can_drive
    expected = "Brum Brum"
    actual = @bus.drive
    assert_equal(expected, actual)
  end

  def test_number_of_passengers
    expected = 0
    actual = @bus.number_of_passengers
    assert_equal(expected, actual)
  end

  def test_add_passenger
    expected = 1
    @bus.pick_up_passenger(@passenger_1)
    actual = @bus.number_of_passengers
    assert_equal(expected, actual)
  end

  def test_drop_off_passenger
    expected = 1
    @bus.pick_up_passenger(@passenger_1)
    @bus.pick_up_passenger(@passenger_2)
    @bus.drop_off_passenger(@passenger_1)
    actual = @bus.number_of_passengers
    assert_equal(expected, actual)
  end

  def test_remove_passengers
    expected = 0
    actual = @bus.number_of_passengers
    @bus.remove_passengers
    assert_equal(expected, actual)
  end

  def test_collect_passengers
    expected = 0
    actual = @bus.number_of_passengers
    @bus_stop.add_passenger_to_queue(@passenger_1)
    @bus_stop.add_passenger_to_queue(@passenger_2)
    @bus.collect_all_passengers(@bus_stop)
    assert_equal(expected, actual)
  end

end
