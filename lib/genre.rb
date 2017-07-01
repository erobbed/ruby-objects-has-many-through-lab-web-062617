class Genre
  attr_accessor :artists
  attr_reader :songs, :name

  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  def artists
    self.songs.each {|song| @artists << song.artist}
    @artists
  end
end
