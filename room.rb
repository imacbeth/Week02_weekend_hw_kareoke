class Room

  attr_reader :number, :track_list, :till

  def initialize(number, till, track_list)
    @number = number
    @track_list = track_list
    @till = till
  end

  def check_room_track_list
    return @track_list
  end

  def add_song_to_room_track_list(song)
    @track_list.push(song)
  end

end
