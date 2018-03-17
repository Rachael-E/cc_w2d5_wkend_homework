require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest')
require_relative ('../rooms')
require_relative ('../song')


class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Rachael", 15, "Despacito")
    @guest2 = Guest.new("Rebecca", 10, "Alive")
    @guest3 = Guest.new("Kenny", 5, "Caledonia")

    @room1 = Room.new("Spanish Pop", 5, 2)
    @room2 = Room.new("Pop", 5, 2)
    @room3 = Room.new("Scottish", 5, 2)
    @room4 = Room.new("All genres", 10, 4)

    @song1 = Song.new("Despacito", "Luis Fonsi")
  end

  def test_guest_has_name
    assert_equal("Rachael", @guest1.name)
  end

  def test_guest_has_money
    assert_equal(10, @guest2.money)
  end

  def test_guest_has_favourite_song
    assert_equal("Despacito", @guest1.favourite_song)
  end

  def test_guest_respond_to_playlist__song_exists
    @room1.add_song(@song1)
    assert_equal("Whoo! Despacito is in the playlist.", @guest1.respond_to_playlist(@room1))
  end

end
