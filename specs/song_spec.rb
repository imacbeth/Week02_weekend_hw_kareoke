require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Respect")
    @song2 = Song.new("Don't go breaking my heart")
    @song3 = Song.new("How will I know")
    @song4 = Song.new("Say my name")
    @song5 = Song.new("Lose yourself")
    @song6 = Song.new("Common People")
  end


  def test_song_has_title
    assert_equal("Respect", @song1.title)
  end


end
