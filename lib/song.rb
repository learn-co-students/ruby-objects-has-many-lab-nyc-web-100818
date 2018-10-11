# songs BELONG TO artist so it has an attr_accessor for that
class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name, artist = nil) # name of song
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist
      self.artist.name
    end
  end
end
