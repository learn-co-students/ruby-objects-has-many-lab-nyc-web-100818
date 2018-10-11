# belongs to Artist
class Song

  attr_accessor :name,:artist
  @@all = []

  def initialize(name)
   @name = name
   @@all << self
  end

  def self.all
   @@all
  end

  def artist_name
   if self.artist
     self.artist.name
     # if there's an artist return artist name otherwise return nil
   end
  end

end # end of Song Class
