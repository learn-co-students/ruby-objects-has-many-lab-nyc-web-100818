# artist should have many songs
class Artist
  attr_accessor :name, :songs, :artist

  @@song_count = 0 # adding up all the songs 

  def initialize(name) # this name is the artist's name
    @name = name
    @songs = [] # so this array of songs belongs to one artist
    @artist = artist
  end

  def add_song(song) # one way to add a song
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  # The argument that's being passed in is a song
  # The self refers to the specific instance since it's not a class method
  # This song's artist attribute is now this artist (self, the instance)

  def add_song_by_name(song_name) # another way to add a song
    song = Song.new(song_name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count # reader for song_count
  end

end
