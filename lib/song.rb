class Song

attr_accessor :artist, :song, :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
@@all
end

def artist_name
  if self.artist == nil #checks if the song.artist is nil
  nil
else
  self.artist.name #return Song's artist's name
end
end



end #end of Song class
