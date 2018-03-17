class Guest

  attr_reader :name, :favourite_song
  attr_accessor :money

  def initialize(name, money, favourite_song)
    @name = name
    @money = money
    @favourite_song = favourite_song
  end

  def respond_to_playlist(room)
    if room.is_song_in_playlist?(@favourite_song)
      return "Whoo! #{favourite_song} is in the playlist."
    else
      return "Sorry, #{favourite_song} isn't in the playlist. Please find another room."
    end
  end

end
