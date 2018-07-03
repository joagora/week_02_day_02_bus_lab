require("minitest/autorun")
require_relative("../passenger")


class TestBus < MiniTest::Test

  def setup
    @passenger_1 = Passenger.new("Mike", "82")

  end

  def test_passenger_name
    assert_equal("Mike", @passenger_1.name)
  end
end
