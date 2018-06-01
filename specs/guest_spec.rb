require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Iona", 30)
    @guest2 = Guest.new("Callum", 50)
    @guest3 = Guest.new("Charlie", 60)
    @guest4 = Guest.new("Frankie", 50)
    @guest5 = Guest.new("Kyle", 60)
    @guest6 = Guest.new("Taylor", 40)
  end


end
