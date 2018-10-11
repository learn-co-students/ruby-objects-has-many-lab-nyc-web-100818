class Artist

  @@all = []

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
  end

   def self.song_count
     @@all.size
   end

  def artist=(artist)
    @artist = artist
  end

  def artist
    @artist
  end

  def Artist.song_count
    Song.all.size
  end

end
