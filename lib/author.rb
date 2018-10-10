class Author

  attr_accessor :name, :posts

  @@all_authors = []

  def initialize(name)
    @name = name
    @posts = []
    @@all_authors << self
  end

  def add_post(post)
    self.posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    self.posts << new_post
    new_post.author = self
  end

  def self.all
    @@all_authors
  end

  def self.post_count
    i = 0
    @@all_authors.each do |author|
      i += author.posts.length
    end
    i
  end

end
