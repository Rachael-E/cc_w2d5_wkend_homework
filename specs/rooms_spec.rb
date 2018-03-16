require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest')
require_relative ('../rooms')
require_relative ('../song')

class TestRooms < Minitest::Test

  def setup

    @guest1 = Guest.new("Rachael")
    @guest2 = Guest.new("Rebecca")
    @guest3 = Guest.new("Kenny")
    guests = [@guest1, @guest2, @guest3]

    @song1 = Song.new("Despacito", "Luis Fonsi")
    @song2 = Song.new("Alive", "Sia")
    @song3 = Song.new("Caledonia", "Dougie Mclean")
    song_list = [@song1, @song2, @song3]

    @room1 = Room.new("Spanish Pop", @guest1, @song1)
    @room2 = Room.new("Pop", @guest2, @song2)
    @room3 = Room.new("Scottish", @guest3, @song3)
    @room4 = Room.new("All genres", guests, song_list)

  end

  def test_room_has_genre
    assert_equal("Spanish Pop", @room1.genre)
  end

  def test_room_has_guests
    assert_equal(3, @room4.occupants().length())

  end

  def test_room_has_songs
    assert_equal("Alive", @room2.playlist.song_name)
  end



end
