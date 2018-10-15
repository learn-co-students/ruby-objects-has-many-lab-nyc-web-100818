class Author

  attr_accessor :name
  attr_reader :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title (titles)
    new_post = Post.new(titles)
    self.posts << new_post
    new_post.author = self
  end

  def Author.post_count
    Post.all.size
  end



end
