class Author
  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @posts = []
  end

  def add_post (post)
    @posts << post
    post.author = self
  end

  def add_post_by_title (title)
   post = Post.new(title)
   @posts << post
   post.author = self
  end

  def self.post_count
    Post.all.count
  end

  def self.all
    @@all
  end

end # end of Author class
