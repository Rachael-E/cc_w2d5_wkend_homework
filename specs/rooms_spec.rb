require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest')
require_relative ('../rooms')
require_relative ('../song')

class TestRooms < Minitest::Test

  def setup

    @guest1 = Guest.new("Rachael", 15)
    @guest2 = Guest.new("Rebecca", 10)
    @guest3 = Guest.new("Kenny", 5)
    @guest4 = Guest.new("Dave", 2)
    #guests = [@guest1, @guest2, @guest3]
    @song1 = Song.new("Despacito", "Luis Fonsi")
    @song2 = Song.new("Alive", "Sia")
    @song3 = Song.new("Caledonia", "Dougie Mclean")
    #song_list = [@song1, @song2, @song3]
    @room1 = Room.new("Spanish Pop", 5, 2)
    @room2 = Room.new("Pop", 5, 2)
    @room3 = Room.new("Scottish", 5, 2)
    @room4 = Room.new("All genres", 10, 4)
  end

  def test_room_has_genre
    assert_equal("Spanish Pop", @room1.room_genre)
  end

  def test_room_has_guests_starts_empty
    assert_equal(0, @room4.occupants().length())
  end

  def test_room_playlist_starts_empty
    assert_equal(0, @room2.playlist.length)
  end

  def test_room_entry_fee
    assert_equal(5, @room1.entry_fee)
  end

  def test_room_capacity
    assert_equal(2, @room1.room_capacity)
  end

  def test_add_guest_to_room
      @room3.add_guest(@guest4)
      assert_equal(1, @room3.occupants().length())
  end

  def test_remove_guest_from_room
    #Arrange
    @room4.add_guest(@guest3)
    @room4.add_guest(@guest4)
    #Act
    @room4.remove_guest(@guest3)
    #Assert
    assert_equal(1, @room4.occupants().length())
    assert_equal(@guest4, @room4.occupants.first)
    assert_equal(false, @room4.occupants.include?(@guest3))
  end

  def test_add_song_to_room
    @room1.add_song(@song1)
    @room2.add_song(@song2)
    @room3.add_song(@song3)
    @room4.add_song(@song1)
    @room4.add_song(@song2)
    @room4.add_song(@song3)
    assert_equal(1, @room1.playlist().length())
    assert_equal(1, @room2.playlist().length())
    assert_equal(1, @room3.playlist().length())
    assert_equal(3, @room4.playlist().length())
  end

  def test_room_is_full__true
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    assert_equal(true, @room1.room_is_full?)
  end

  def test_room_is_full__false
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    assert_equal(false, @room1.room_is_full?)
  end

  def test_customer_can_afford_entry_fee__true
    @room1.add_guest(@guest1)
    assert_equal(true,   @room1.can_guest_afford_entry_fee?(@room1.entry_fee, @guest1.money))
  end

  def test_customer_can_afford_entry_fee__false
    @room1.add_guest(@guest4)
    assert_equal(false,   @room1.can_guest_afford_entry_fee?(@room1.entry_fee, @guest4.money))
  end




end
