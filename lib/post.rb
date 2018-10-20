class Post

  attr_accessor :title, :author 

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    #knows author name, nil if !exist
  author.name if author
  end

end
