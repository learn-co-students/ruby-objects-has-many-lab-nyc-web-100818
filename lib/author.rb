class Author

attr_accessor :posts, :name, :author

def initialize(name)
  @name = name
  @posts = []
  @author = author
end


#add_pos takes in an argument of a post and associates that post with the author by telling the post that it belongs to that author (FAILED - 1)

def add_post(post)
  @posts << post   #pushes post into post array so that we can compare the author with that author
  post.author = self
end

# add_post_by_title
#     takes in an argument of a post title, creates a new post with it and associates the post and author (FAILED - 1)

def add_post_by_title(title)
  post_title = Post.new(title)
  post_title.author = self
    @posts << post_title
end

def self.post_count
  Post.all.count
end

end #end of Author class
