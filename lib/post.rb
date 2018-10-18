class Post
  attr_accessor :author, :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def author_name
    if self.author # if this post has an author, then return its name
      self.author.name
    else
      nil
    end
  end

  def self.all
    @@all
  end

end # end of Post class
