class Author
  attr_reader :name
  @@posts = [] 
  
  def initialize(name)
    @name = name
     @@posts << self
  end
  
  def posts
    @@posts
  end
  
  def add_post(post)
    post.author = self
  end
 

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
    Post.all.count
  end
end #CLSEND