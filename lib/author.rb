require 'pry'
class Author

  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(post_object)
    post_object.author = self
    @posts << post_object
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @posts << post
  end

  def self.post_count
    Post.all.length
  end

end

 # binding.pry
 #  0
