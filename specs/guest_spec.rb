require("minitest/autorun")
require("minitest/rg")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Iona", 30)
    @guest2 = Guest.new("Callum", 50)
    @guest3 = Guest.new("Charlie", 60)
    @guest4 = Guest.new("Frankie", 50)
    @guest5 = Guest.new("Kyle", 60)
    @guest6 = Guest.new("Taylor", 40)

    @room = Room.new("One", 100, @track_list, @guests, 5)
  end

  def test_guest_has_sufficient_funds
    assert_equal(true, @guest5.sufficient_funds?(@room))
  end

  def test_guest_pays_entry
    @guest4.guest_pays_entry(@room)
    assert_equal(45, @guest4.wallet)
  end

end
