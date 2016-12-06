require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'
require './lib/node'
require './lib/insertion_sort'

class NodeTest < Minitest::Test

  def test_node_exists
    movie_rating = 61
    movie_title = "Bill and Ted's Excellent Adventure"
    node = Node.new(movie_rating, movie_title)

    assert node
    assert_equal node.movie_rating, movie_rating
    assert_equal node.movie_title, movie_title
  end

  def test_node_insert
    movie_rating = 61
    movie_title = "Bill and Ted's Excellent Adventure"
    node = Node.new(movie_rating, movie_title)

    depth_1 = node.insert(10, "Titanic")
    
    assert_equal 1, depth_1
  end
  def test_node_insert
    movie_rating = 61
    movie_title = "Bill and Ted's Excellent Adventure"
    node = Node.new(movie_rating, movie_title)
    node.insert(10, "Titanic")
    
    depth_1 = node.insert(10, "Titanic")

    assert_nil depth_1
  end

end