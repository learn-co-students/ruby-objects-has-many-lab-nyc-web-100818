require 'pry'
class Post

  attr_accessor :title, :author #post_objecet

  @@all = []

  def initialize(title)
    @title = title
    # @posts = posts
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author == nil
      return nil
    else
      return @author.name
    end
  end

end
