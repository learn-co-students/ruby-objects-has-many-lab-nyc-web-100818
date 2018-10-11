# has many
class Artist
 attr_accessor :name,:songs

 @@all = []

 def initialize (name)
   @name = name
   @@all << self
   @songs = []
 end

 def add_song(song)
   @songs << song
   #takes the song argument and passes it into @songs instance variable
   song.artist = self
   #this takes in a song as an argument and using #artist setter method, sets the artist equal to self (the current instance of the Artist class)
 end

 def add_song_by_name (name)
   song = Song.new(name)
  @songs << song
  song.artist = self
 end

 def self.song_count
   Song.all.count
 end



 def self.all
   @@all
 end

end # end of Artist Class
