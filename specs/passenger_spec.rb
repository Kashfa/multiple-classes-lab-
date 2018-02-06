require("minitest/autorun")
require_relative("../passenger")
class PassengerTest < MiniTest::Test

  def setup()
    @passenger = Passenger.new("Peter", 55)
    @passenger2 = Passenger.new("James", 30)
  end

# def test_drop_off
#   person_off = ["Carlos", "Fawzia"]
#   person_off = @passengers.drop_off("Carlos")
#   assert_equal(person_off.count, 1)
# end
end
