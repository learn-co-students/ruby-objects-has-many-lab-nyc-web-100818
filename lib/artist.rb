require 'pry'
class Artist

  attr_accessor :name, :songs

  @@all = []
  # @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song_object)
    # song = Song.new(name, artist)
    # @songs << song
    # song_object.artist = self

    song_object.artist = self
    @songs << song_object
    # @@song_count += 1
    @songs.length
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self

    # @@song_count += 1
  end

  def self.song_count
    # song.all.length do |count|
    #   count.artist
    # end
    Song.all.count
    # @@song_count
  end

end

# adele = Artist.new("Adele") # -> <Artist:1100348y94 @name="Adele">
# hello = Song.new("Hello") # -> <Song:19109evjio @name="Hello">
# adele.add_song(hello) # -> <Artist:1100348y94 @name="Adele">.add_song(<Song:19109evjio @name="Hello">)
# hello.name
