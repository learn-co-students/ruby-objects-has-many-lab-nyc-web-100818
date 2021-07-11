class Author
  attr_accessor :name, :posts

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @posts = []
  end

  def add_post (post)
    # takes a song as an argument and pushes it into @posts instance variable
    @posts << post
    # accesses the .author attribute for post and sets it to self (the current instance of Author class)
    post.author = self
  end

  def add_post_by_title (title)
    # creates a new instance of Post class with the title as the argument and saves it to variable post
   post = Post.new(title)
   # pushes the created variable with the new instance inside it to @posts
   @posts << post
   # accesses the .author attribute for post and sets it to self (the current instance of Author class)
   post.author = self
  end

  def self.post_count
    #utilizes Ruby count method to count all the element inside the @@all class variable for the class Post ( accessed via the class method .all)
    Post.all.count
  end

  def self.all
    @@all
  end

end # end of Author class
