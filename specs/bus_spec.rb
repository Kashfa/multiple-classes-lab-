require("minitest/autorun")
require_relative("../bus")
require_relative("../passenger")

class BusTest < MiniTest::Test

  def setup()
    @passenger = Passenger.new("Carlos", "Fawzia")
    @bus = Bus.new(22, "Ocean Terminal")
    @bus2 = Bus.new(10, "Bruntsfield" )

  end

  def test_drive
    bus_sound = @bus.drive()
    assert_equal("Brum Brum", bus_sound)
end

def test_return_passengers
  number = @bus.count_passengers()
  assert_equal(0, number)
end

def test_pick_up
  @bus.pick_up(@iuaf)
  count = @bus.count_passengers
  assert_equal(1, count)
end

def test_drop_off
  @bus2.pick_up(@passenger)
  count = @bus2.count_passengers()
  assert_equal(1, count)
  @bus2.drop_off(@passenger)
  count = @bus2.count_passengers()
  assert_equal(0, count)
end

def test_empty_bus
  count = @bus.empty_bus
  assert_equal([], count)
end
end
