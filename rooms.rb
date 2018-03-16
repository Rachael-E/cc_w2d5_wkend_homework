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
    @occupants << guest

    # return can_guest_afford_entry_fee?(room_fee, guest_money)
    # return p "Not enough money" this commented out returns an error.

    return if @room_capacity >= @occupants.length
    return p "No room left"


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

  def can_guest_afford_entry_fee?(room_fee, guest_money)
    guest_money >= room_fee
  end



end
