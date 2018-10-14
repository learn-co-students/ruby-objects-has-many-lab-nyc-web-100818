require 'pry'
class Artist
  attr_reader :name, :songs # I'm assuming an Artist cannot change his/her name so we only need a getter, not a setter
  @@song_count = 0 # starts at 0
  # ---INSTANCE METHODS ---
  def initialize(name) # an Artist instance is initialized w a name
    @name = name
    @songs = [] # each Artist instance will have many songs and this array will hold those songs
  end

  def add_song(song)
    @songs << song
    song.artist = self # this song's artist is the instance of the Artist class we are in. This song BELONGS TO this artist instance.
    @@song_count += 1 # inc this everytime an Artist instance adds a new song
  end

  def add_song_by_name(song) # takes in an arg of a song name
    new_song = Song.new(song)
    @songs << new_song
    new_song.artist = self # associate the new_song to the Artist instance
    @@song_count += 1 # inc this everytime an Artist instance adds a new song
  end

  # def songs # this is not necessary since we can just puts @songs in the attr_reader
  #   @songs # gets the output of the @songs array
  # end
  # ---CLASS METHODS ---
  def self.song_count # returns the total number of songs associated to all existing artists
    @@song_count
  end

end # end of Artist class
# binding.pry
