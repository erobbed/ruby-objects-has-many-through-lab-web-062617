class Artist
  attr_writer :genres
  attr_reader :songs, :name

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def genres
    self.songs.each {|song| @genres << song.genre}
    @genres
  end
end
