require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'
require './lib/node'
require './lib/insertion_sort'

class InsertionSortTest < Minitest::Test

	def test_sort_multiple_objects
		nodes = []
		movie_data = [
			[61, "Bill and Ted's Excellent Adventure"],
			[73, "The Room" ],
			[84, "Waterworld"],
			[87, "The Scorpion King 4: Quest for Power"],
			[92, "Sharnado 3"]
		]
		movies_shuffled = movie_data.shuffle
		movies = []
		movies_shuffled.each do |movie_rating, movie_title|
			node = Node.new(movie_rating, movie_title)
			movies.push(node)
		end
		sorter = InsertionSort.new
		movies = sorter.sort(movies)
		(movie_data.length).times do |i|
			assert_equal movies[i].movie_rating, movie_data[i][0]
			assert_equal movies[i].movie_title, movie_data[i][1]
		end
	end

end