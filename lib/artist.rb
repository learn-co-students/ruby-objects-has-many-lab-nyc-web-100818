require 'pry'

class Artist

  @@all_artists = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
    @@all_artists << self
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all_artists
  end

  def self.song_count
    i = 0
    @@all_artists.each do |artist|
      i += artist.songs.length
    end
    i
  end



end
