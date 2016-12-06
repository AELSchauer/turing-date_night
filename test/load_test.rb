require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'
require './lib/node'
require './lib/insertion_sort'
require './lib/load'

class LoadTest < Minitest::Test

  def test_load_exists
    loader = Load.new

    assert loader
  end




  def test_load_open_non_existent_file
    loader = Load.new
    file_1 = loader.open_file("does_not_exist.txt")

    assert_nil file_1
  end
  def test_load_short_list_file
    loader = Load.new
    file_1 = loader.open_file("movies_short.txt")

    assert file_1
  end
  def test_load_long_list_file
    loader = Load.new
    file_1 = loader.open_file("movies_long.txt")

    assert file_1
  end




  def test_load_retrieve_movies_list_short
    loader = Load.new
    file_1 = loader.open_file("movies_short.txt")

    list_1 = loader.retrieve_movies_list(file_1)

    assert_equal [[61, "Bill and Ted's Excellent Adventure"], [4, "Shakespeare in Love"], [92, "Sharknado 3"], [69, "I Love You, Man"]], list_1
  end
  def test_load_retrieve_movies_list_long
    loader = Load.new
    file_1 = loader.open_file("movies_long.txt")

    list_1 = loader.retrieve_movies_list(file_1)

    assert_equal 99, list_1.length
  end

end