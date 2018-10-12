class Artist
  attr_accessor :name, :songs

  @@all_artists = [] #only keeps track of ALL artists

  def initialize(name)
    @name = name
    @songs = []
    @@all_artists << self
  end

  def self.all_artists
    @@all_artists
  end


  def add_song(song)
    @songs << song
    song.artist = self  #self = Artist instance
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end

end
