require("minitest/autorun")
require_relative("../busstop")
require_relative("../passenger")

class BusStopTest < MiniTest::Test
def setup()
  @stop_1 = BusStop.new("Princes Street", [])
  @stop_2 = BusStop.new("Leith Walk", [])
  @stop_3 = BusStop.new("Duke Street", [])
end
  def test_add_person_to_queue
    count = @stop1.add_person_to_queue("Carlos")
    assert_equal(count, 1)
end
end 
