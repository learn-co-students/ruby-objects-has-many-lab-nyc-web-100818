class Post
  attr_accessor :title, :author
  @@all = []

  def initialize(title)
    @title = title
    @author = author
    @@all << self
  end

  def self.all #return array of all post instances
    @@all
  end

  def author_name
    self.author ? self.author.name : nil
  end


end
