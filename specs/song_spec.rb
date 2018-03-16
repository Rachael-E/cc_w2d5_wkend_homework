require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../song')

class TestSong < Minitest::Test

  def setup
    @song1 = Song.new("Despacito", "Luis Fonsi")
    @song2 = Song.new("Alive", "Sia")
    @song3 = Song.new("Caledonia", "Dougie Mclean")
  end

  def test_song_has_name
    assert_equal("Despacito", @song1.song_name)
  end

  def test_song_has_artist
    assert_equal("Sia", @song2.artist)
  end



end
