class Song
  attr_accessor :artist, :song, :name
  @@all = [] #all_songs keep track of ALL song instances

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if self.artist == nil
      return nil
    else
    self.artist.name
    end
  end


end


#test = Song("name")
#test.artist = Artist("artist_name")
#test.artist_name
  #self = instance inside Song class
  #self.artist = looking up SELF in ARTIST class
  #self.artist.name to only return name
