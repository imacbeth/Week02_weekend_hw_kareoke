class Room

  attr_reader :number, :track_list, :till, :guests

  def initialize(number, till, track_list, guests)
    @number = number
    @track_list = track_list
    @till = till
    @guests = guests
  end

  def check_room_track_list
    return @track_list
  end

  def add_song_to_room_track_list(song)
    @track_list.push(song)
  end

  def check_guest_into_room(guest)
    @guests.push(guest)
  end

  def check_guest_out_of_room(guest)
    index = @guests.index(guest)
    @guests.slice!(index, 1)
  end

end
