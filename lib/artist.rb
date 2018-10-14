require 'pry'

class Artist

attr_accessor :songs, :name

@@all_artist = []  #all of artist inside this class
@@song_count = 0


def initialize(name) #name is the Artist name
  @name = name
  @songs = []
  @@all_artist << self #add to artist class array upon creation
end

def self.all_artist
  @@all_artist
end

def add_song(song) #takes argument of song
  @songs << song
  song.artist = self  #song = argument that the spec created. self refers to the instance that was created at the time
#  puts self #same object ID
end


def add_song_by_name(song_name)
song = Song.new(song_name)
 @songs << song
song.artist = self  #song = argument that the spec created. self refers to the instance that was created at the time
end

def self.song_count
   Song.all.count
 end

end #end of Artist class
