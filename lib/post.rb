# posts BELONG to author
class Post

  attr_accessor :author, :title

  @@all = []

  def initialize(title, author = nil)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if self.author # is there an author
      self.author.name
    # else
    #   nil
    end
  end

end
