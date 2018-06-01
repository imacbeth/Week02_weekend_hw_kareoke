require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")
require_relative("../room.rb")
require_relative("../song.rb")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Respect")
    @song2 = Song.new("Don't go breaking my heart")
    @song3 = Song.new("How will I know")
    @song4 = Song.new("Say my name")
    @song5 = Song.new("Lose yourself")
    @song6 = Song.new("Common People")
    @track_list = []
    @room = Room.new("One", 100, @track_list)

  end

  def test_check_room_track_list
    assert_equal([], @room.check_room_track_list)
  end

  def test_add_song_to_room_track_list
    p @room
    @room.add_song_to_room_track_list(@song2)
    p @room
    assert_equal([@song2], @room.check_room_track_list)
  end

end
