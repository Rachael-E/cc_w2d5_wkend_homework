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
    # if guest_can_afford_room?(guest) == true && room_is_full? == true ### THIS BIT CAUSES ERRORS ###


    @occupants << guest

  end

  def remove_guest(guest)
    @occupants.delete(guest)
  end

  def add_song(song)
    @playlist << song
  end

  def room_is_full?()
    if @room_capacity >= @occupants.length
      return "Come on in!"
    else return "Sorry, room full."
    end
    # if @room_capacity >= @occupants.length
    #   return true
    # else @room_capacity < @occupants.length
    #   return false
    # end
  end

  def guest_can_afford_room?(guest)
    if @entry_fee <= guest.money
      return "Welcome, you can afford this room!"
    else return "Sorry, you cannot afford this room. Sad times."
    end
  end

  def is_fav_song_in_playlist?(favourite_song)
    for song in @playlist
      p @playlist
      if song.song_name == favourite_song
        return "Whoo! #{favourite_song} is in the playlist."
      else return "Sorry, #{favourite_song} isn't in the playlist."
      end
    end


  end







end
