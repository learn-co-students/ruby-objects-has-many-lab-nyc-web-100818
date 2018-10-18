class Author
  attr_accessor :name, :posts # the spec told me to put an attr_accessor for name, but i'd usually put an attr_reader for name since someone does not usually reset their name
  @@post_count = 0
  # ---INSTANCE METHODS---
  def initialize(name) # each Author instance is initialized w a name
    @name = name
    @posts = [] # initialize each Author instance w an empty posts array for us to fill in as Author adds new posts
  end

  def add_post(post) # takes in an arg of a post
    # associates that post w the author by telling the post it BELONGS TO that author
    post.author = self
    @posts << post # add the new post to the @posts array
    @@post_count += 1
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self
    @posts << new_post

    @@post_count += 1
  end

  # ---CLASS METHODS---
  def self.post_count
    @@post_count
  end

end # end of Author class
