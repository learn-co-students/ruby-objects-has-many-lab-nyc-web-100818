class Author

@@all = []
  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(titles)
    post = Post.new(titles)
    self.posts << post
    post.author = self
  end

   def self.post_count
     @@all.size
   end

  def author=(author)
    @author = author
  end

  def author
    @author
  end

  def Author.post_count
    Post.all.size
  end

end
