class Author


  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def posts
    #has many posts; artist instance can now select from all of its posts
    Post.all.select {|post| post.author == self}
  end


  def add_post(post)
    post.author = self #belongs to this author
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
  end

  def self.post_count
    Post.all.count #call on Post.all method (the list)
  end
end

  