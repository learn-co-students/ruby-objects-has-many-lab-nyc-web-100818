class Artist

attr_accessor :name
attr_reader :songs

@@all = []

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

def Artist.song_count
  Song.all.size
end





end
