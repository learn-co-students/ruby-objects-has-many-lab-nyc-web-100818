class Artist

  attr_accessor :name, :songs

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  #has many songs: songs([]) holds a list of songs artist 'has many' of
  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self #self = artist instance; call on setter
    @@song_count += 1 #track song count
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self #calling artist=()
    @@song_count += 1 #track song count
  end

  def self.song_count
    @@song_count
  end

end
