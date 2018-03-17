class Room
  attr_reader :room_genre, :entry_fee, :room_capacity
  attr_accessor :occupants, :playlist

  def initialize(name, entry_fee, room_capacity)
    @room_genre = name
    @occupants = []
    @playlist = []
    @entry_fee = entry_fee
    @room_capacity = room_capacity
  end

  def add_guest(guest)
    if guest_can_afford_room?(guest) && room_is_full?
      @occupants << guest
    end
  end

  def remove_guest(guest)
    @occupants.delete(guest)
  end

  def add_song(song)
    @playlist << song
  end

  def room_is_full?()
    @room_capacity >= @occupants.length

    # if @room_capacity >= @occupants.length
    #   return true
    # else @room_capacity < @occupants.length
    #   return false
    # end
  end

  def guest_can_afford_room?(guest)
    @entry_fee <= guest.money
  end

  def is_song_in_playlist?(given_song)
    for song in @playlist
      if song.song_name == given_song
        return true
      end
    end
    return false
  end




end
