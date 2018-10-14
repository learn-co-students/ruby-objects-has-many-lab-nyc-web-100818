class Song
  attr_accessor :artist
  attr_reader :name # assuming the Song name will not need to be reSET, so just need a getter

  @@all = [] # CLASS VARIABLE - starts as an empty array
  # ---INSTANCE METHODS---
  def initialize(name) # each Song instance is initialized w a name
    @name = name
    @@all << self # everytime a new Song instance is created, we want to track it in the @all array
  end

  def artist_name # each Song instance knows the name of its artist
    if self.artist # if this Song instance has an artist
      self.artist.name # return the artist's name attribute
    elsif !self.artist # otherwise, if there is no artist
      nil # return nillypoo
    end
  end
  # ---CLASS METHODS---
  def self.all # returns/"gets" the @@all array that holds all the song instances
    @@all
  end


end # end of Song class
