class Room
  attr_reader :genre
  attr_accessor :occupants, :playlist

  def initialize(name, occupants, playlist)
    @genre = name
    @occupants = occupants
    @playlist = playlist

  end



end
