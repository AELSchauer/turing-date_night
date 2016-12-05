require './lib/binary_search_tree'

class Node
	attr_accessor :movie_rating, :movie_title, :lower_link, :higher_link
	def initialize(movie_rating, movie_title)
		@movie_rating = movie_rating
		@movie_title = movie_title
	end
end