require 'pry'
require_relative 'artist'
require_relative 'author'
require_relative 'post'
require_relative 'song'


a1 = Artist.new("Jay-Z")
a2 = Artist.new("Queen")
a3 = Artist.new("Kanye")
a4 = Artist.new("AcDc")

s1 = Song.new("You belong to the city")
s2 = Song.new("Robocop")
s3 = Song.new("Bicycle")
s4 = Song.new("Shoot to Kill")


binding.pry
