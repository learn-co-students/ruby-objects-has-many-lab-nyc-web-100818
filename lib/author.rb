class Author

	@@all_posts = []

	attr_accessor :name, :posts

	def initialize(name)
		@name = name
		@posts = []
	end #end of initialize 

	def add_post(post)
		@posts << post
		post.author = self
		@@all_posts << post
	end

	def add_post_by_title(post_title)
		new_post = Post.new(post_title)
		@posts << new_post
		new_post.author = self
		@@all_posts << new_post
	end

	def self.post_count
		@@all_posts.length
	end




end #end of Author class