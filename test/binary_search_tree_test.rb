require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'
require './lib/node'
require './lib/insertion_sort'

class BinarySearchTreeTest < Minitest::Test

	def test_bst_exists
		tree = BinarySearchTree.new

		assert tree
	end




  def test_bst_insert_has_correct_output_after_first_insert
    tree = BinarySearchTree.new
    insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")

    assert_equal insert_1, 0
  end
  def test_bst_insert_has_correct_output_after_second_insert
    tree = BinarySearchTree.new

    insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
    insert_2 = tree.insert(16, "Johnny English")

    assert_equal insert_1, 0
    assert_equal insert_2, 1
  end
  def test_bst_insert_has_correct_output_after_third_insert
    tree = BinarySearchTree.new

    insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
    insert_2 = tree.insert(16, "Johnny English")
    insert_3 = tree.insert(92, "Sharknado 3")

    assert_equal insert_1, 0
    assert_equal insert_2, 1
    assert_equal insert_3, 1
  end
  def test_bst_insert_has_correct_output_after_five_lower
    tree = BinarySearchTree.new

    insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
    insert_2 = tree.insert(16, "Johnny English")
    insert_3 = tree.insert(10, "Titanic")
    insert_4 = tree.insert(7, "When Harry Met Sally")
    insert_5 = tree.insert(4, "Shakespare in Love")

    assert_equal insert_1, 0
    assert_equal insert_2, 1
    assert_equal insert_3, 2
    assert_equal insert_4, 3
    assert_equal insert_5, 4
  end
  def test_bst_insert_has_correct_output_after_five_zig_zag_lower
    tree = BinarySearchTree.new

    insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
    insert_2 = tree.insert(4, "Shakespare in Love")
    insert_3 = tree.insert(16, "Johnny English")
    insert_4 = tree.insert(7, "When Harry Met Sally")
    insert_5 = tree.insert(10, "Titanic")

    assert_equal insert_1, 0
    assert_equal insert_2, 1
    assert_equal insert_3, 2
    assert_equal insert_4, 3
    assert_equal insert_5, 4
  end
  def test_bst_insert_has_correct_output_after_five_higher
    tree = BinarySearchTree.new

    insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
    insert_2 = tree.insert(73, "The Room")
    insert_3 = tree.insert(84, "Waterworld")
    insert_4 = tree.insert(87, "The Scorpion King 4: Quest for Power")
    insert_5 = tree.insert(92, "Sharknado 3")

    assert_equal insert_1, 0
    assert_equal insert_2, 1
    assert_equal insert_3, 2
    assert_equal insert_4, 3
    assert_equal insert_5, 4
  end
  def test_bst_insert_has_correct_output_after_five_zig_zag_higher
    tree = BinarySearchTree.new

    insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
    insert_2 = tree.insert(92, "Sharknado 3")
    insert_3 = tree.insert(73, "The Room")
    insert_4 = tree.insert(87, "The Scorpion King 4: Quest for Power")
    insert_5 = tree.insert(84, "Waterworld")

    assert_equal insert_1, 0
    assert_equal insert_2, 1
    assert_equal insert_3, 2
    assert_equal insert_4, 3
    assert_equal insert_5, 4
  end




  def test_bst_include_has_correct_output_after_zero_inserts
    tree = BinarySearchTree.new

    include_1 = tree.include?(61)
    include_2 = tree.include?(16)
    include_3 = tree.include?(92)

    assert_equal include_1, false
    assert_equal include_2, false
    assert_equal include_3, false
  end
  def test_bst_include_has_correct_output_after_first_insert
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    
    include_1 = tree.include?(61)
    include_2 = tree.include?(16)
    include_3 = tree.include?(92)

    assert_equal include_1, true
    assert_equal include_2, false
    assert_equal include_3, false
  end
  def ttest_bst_include_has_correct_output_after_second_insert
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")

    include_1 = tree.include?(61)
    include_2 = tree.include?(16)
    include_3 = tree.include?(92)

    assert_equal include_1, true
    assert_equal include_2, true
    assert_equal include_3, false
  end
  def test_bst_include_has_correct_output_after_third_insert
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado")

    include_1 = tree.include?(61)
    include_2 = tree.include?(16)
    include_3 = tree.include?(92)

    assert_equal include_1, true
    assert_equal include_2, true
    assert_equal include_3, true
  end




  def test_bst_max_has_correct_output_after_zero_inserts
    tree = BinarySearchTree.new

    max_rating = tree.max

    assert_equal max_rating, {}
  end
  def test_bst_max_has_correct_output_after_first_insert
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")

    max_rating = tree.max

    assert_equal max_rating, {"Bill and Ted's Excellent Adventure" => 61}
  end
  def ttest_bst_max_has_correct_output_after_second_insert
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")

    max_rating = tree.max

    assert_equal max_rating, {"Bill and Ted's Excellent Adventure" => 61}
  end
  def test_bst_max_has_correct_output_after_third_insert
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")

    max_rating = tree.max

    assert_equal max_rating, {"Sharknado 3" => 92}
  end
  def test_bst_max_has_correct_output_after_five_higher
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(73, "The Room")
    tree.insert(84, "Waterworld")
    tree.insert(87, "The Scorpion King 4: Quest for Power")
    tree.insert(92, "Sharknado 3")

    max_rating = tree.max

    assert_equal max_rating, {"Sharknado 3" => 92}
  end
  def test_bst_max_has_correct_output_after_five_zig_zag_higher
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(92, "Sharknado 3")
    tree.insert(73, "The Room")
    tree.insert(87, "The Scorpion King 4: Quest for Power")
    tree.insert(84, "Waterworld")

    max_rating = tree.max

    assert_equal max_rating, {"Sharknado 3" => 92}
  end
  def test_bst_max_has_correct_output_after_five_lower
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(10, "Titanic")
    tree.insert(7, "When Harry Met Sally")
    tree.insert(4, "Shakespare in Love")

    max_rating = tree.max

    assert_equal max_rating, {"Bill and Ted's Excellent Adventure" => 61}
  end
  def test_bst_max_has_correct_output_after_five_zig_zag_lower
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(4, "Shakespare in Love")
    tree.insert(16, "Johnny English")
    tree.insert(7, "When Harry Met Sally")
    tree.insert(10, "Titanic")

    max_rating = tree.max

    assert_equal max_rating, {"Bill and Ted's Excellent Adventure" => 61}
  end




  def test_bst_min_has_correct_output_after_zero_inserts
    tree = BinarySearchTree.new

    min_rating = tree.min

    assert_equal min_rating, {}
  end
  def test_bst_min_has_correct_output_after_first_insert
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")

    min_rating = tree.min

    assert_equal min_rating, {"Bill and Ted's Excellent Adventure" => 61}
  end
  def ttest_bst_min_has_correct_output_after_second_insert
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")

    min_rating = tree.min

    assert_equal min_rating, {"Johnny English" => 16}
  end
  def test_bst_min_has_correct_output_after_third_insert
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")

    min_rating = tree.min

    assert_equal min_rating, {"Johnny English" => 16}
  end

  def test_bst_min_has_correct_output_after_five_higher
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(73, "The Room")
    tree.insert(84, "Waterworld")
    tree.insert(87, "The Scorpion King 4: Quest for Power")
    tree.insert(92, "Sharknado 3")

    min_rating = tree.min

    assert_equal min_rating, {"Bill and Ted's Excellent Adventure" => 61}
  end
  def test_bst_min_has_correct_output_after_five_zig_zag_higher
    tree = BinarySearchTree.new
    tree.insert(61, "Bill and Ted's Excellent Adventure")
    tree.insert(92, "Sharknado 3")
    tree.insert(73, "The Room")
    tree.insert(87, "The Scorpion King 4: Quest for Power")
    tree.insert(84, "Waterworld")

    min_rating = tree.min

    assert_equal min_rating, {"Bill and Ted's Excellent Adventure" => 61}
  end
  def test_bst_min_has_correct_output_after_five_lower
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(10, "Titanic")
    tree.insert(7, "When Harry Met Sally")
    tree.insert(4, "Shakespare in Love")

    min_rating = tree.min

    assert_equal min_rating, {"Shakespare in Love" => 4}
  end
  def test_bst_min_has_correct_output_after_five_zig_zag_lower
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(4, "Shakespare in Love")
    tree.insert(16, "Johnny English")
    tree.insert(7, "When Harry Met Sally")
    tree.insert(10, "Titanic")

    min_rating = tree.min

    assert_equal min_rating, {"Shakespare in Love" => 4}
  end




  def test_bst_depth_of_has_correct_output_after_zero_inserts
    tree = BinarySearchTree.new

    depth_1 = tree.depth_of(61)
    depth_2 = tree.depth_of(16)
    depth_3 = tree.depth_of(92)

    assert_nil depth_1
    assert_nil depth_2
    assert_nil depth_3
  end
  def test_bst_depth_of_has_correct_output_after_one_insert
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")

    depth_1 = tree.depth_of(61)
    depth_2 = tree.depth_of(16)
    depth_3 = tree.depth_of(92)

    assert_equal depth_1, 0
    assert_nil depth_2
    assert_nil depth_3
  end
  def test_bst_depth_of_has_correct_output_after_two_inserts
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")

    depth_1 = tree.depth_of(61)
    depth_2 = tree.depth_of(16)
    depth_3 = tree.depth_of(92)

    assert_equal depth_1, 0
    assert_equal depth_2, 1
    assert_nil depth_3
  end
  def test_bst_depth_of_has_correct_output_after_three_inserts
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")

    depth_1 = tree.depth_of(61)
    depth_2 = tree.depth_of(16)
    depth_3 = tree.depth_of(92)

    assert_equal depth_1, 0
    assert_equal depth_2, 1
    assert_equal depth_3, 1
  end
  def test_bst_depth_of_has_correct_output_after_many_inserts
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(4, "Shakespare in Love")
    tree.insert(16, "Johnny English")
    tree.insert(7, "When Harry Met Sally")
    tree.insert(10, "Titanic")
    tree.insert(92, "Sharknado 3")
    tree.insert(73, "The Room")
    tree.insert(87, "The Scorpion King 4: Quest for Power")
    tree.insert(84, "Waterworld")

    depth_1 = tree.depth_of(61)
    depth_2 = tree.depth_of(4)
    depth_3 = tree.depth_of(92)
    depth_4 = tree.depth_of(16)
    depth_5 = tree.depth_of(73)
    depth_6 = tree.depth_of(7)
    depth_7 = tree.depth_of(87)
    depth_8 = tree.depth_of(10)
    depth_9 = tree.depth_of(84) 

    assert_equal depth_1, 0
    assert_equal depth_2, 1
    assert_equal depth_3, 1
    assert_equal depth_4, 2
    assert_equal depth_5, 2
    assert_equal depth_6, 3
    assert_equal depth_7, 3
    assert_equal depth_8, 4
    assert_equal depth_9, 4
  end




  def test_bst_sort_has_correct_output_after_zero_inserts
    tree = BinarySearchTree.new

    sort_1 = tree.sort

    assert_equal sort_1, []
  end
  def test_bst_sort_has_correct_output_after_one_insert
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")

    sort_1 = tree.sort

    assert_equal sort_1, [{"Bill and Ted's Excellent Adventure" => 61}]
  end
  def test_bst_sort_has_correct_output_after_three_inserts
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(10, "Titanic")
    tree.insert(84, "Waterworld")

    sort_1 = tree.sort

    assert_equal sort_1, [{"Titanic" => 10}, {"Bill and Ted's Excellent Adventure" => 61}, {"Waterworld" => 84}]
  end
  def test_bst_sort_has_correct_output_after_many_inserts
    tree = BinarySearchTree.new
    tree.insert(61,"Bill and Ted's Excellent Adventure")
    tree.insert(4, "Shakespeare in Love")
    tree.insert(16, "Johnny English")
    tree.insert(7, "When Harry Met Sally")
    tree.insert(10, "Titanic")
    tree.insert(92, "Sharknado 3")
    tree.insert(73, "The Room")
    tree.insert(87, "The Scorpion King 4: Quest for Power")
    tree.insert(84, "Waterworld")

    sort_1 = tree.sort

    assert_equal sort_1, [{"Shakespeare in Love" => 4}, {"When Harry Met Sally" => 7}, {"Titanic" => 10}, 
      {"Johnny English" => 16}, {"Bill and Ted's Excellent Adventure" => 61}, {"The Room" => 73},
      {"Waterworld" => 84}, {"The Scorpion King 4: Quest for Power" => 87}, {"Sharknado 3" => 92} ]
  end




  def test_bst_load_has_correct_output_after_nonexistant_file
    tree = BinarySearchTree.new
    load_1 = tree.load("not_a_file.txt")

    assert_nil load_1
  end
  def test_bst_load_has_correct_output_after_short_file
    tree = BinarySearchTree.new
    upload_count = tree.load("movies_short.txt")

    assert_equal 4, upload_count
  end
  def test_bst_load_has_correct_output_after_medium_file
    tree = BinarySearchTree.new
    upload_count = tree.load("movies_medium.txt")

    assert_equal 9, upload_count
  end
  def test_bst_load_has_correct_output_after_long_file
    tree = BinarySearchTree.new
    upload_count = tree.load("movies_long.txt")

    assert_equal 99, upload_count
  end
  def test_bst_load_has_correct_output_after_compare_unique_and_not_unique
    tree_1 = BinarySearchTree.new
    tree_2 = BinarySearchTree.new
    upload_count_1 = tree_1.load("movies_medium.txt")
    upload_count_2 = tree_2.load("movies_medium_not_unique.txt")

    assert_equal upload_count_1 == upload_count_2, true
  end
  def test_bst_load_has_correct_output_after_upload_same_file_twice
    tree_1 = BinarySearchTree.new
    tree_1.load("movies_medium.txt")
    upload_count = tree_1.load("movies_medium.txt")

    assert_equal 0, upload_count
  end
  



  # def test_bst_health_has_correct_output_with_no_inserts
  #   tree = BinarySearchTree.new
    
  #   assert_nil tree.health(0)
  # end
  # def test_bst_health_has_correct_output_with_upload
  #   tree = BinarySearchTree.new
  #   tree.load("movies_medium.txt")

  #   health_1 = tree.health(0)
  #   health_2 = tree.health(1)
  #   health_3 = tree.health(2)
  #   health_4 = tree.health(3)
  #   health_5 = tree.health(4)

  #   assert_equal health_1, [[61, 9, 100]]
  #   assert_equal health_2, [[4, 4, 44], [92, 4, 44]]
  #   assert_equal health_3, [[16, 3, 33], [73, 3, 33]]
  #   assert_equal health_4, [[7, 2, 22], [87, 2, 22]]
  #   assert_equal health_5, [[10, 1, 11], [84, 1, 11]]
  # end
  # def test_bst_health_has_correct_output_with_large_upload
  #   tree = BinarySearchTree.new
  #   tree.load("movies_long.txt")

  #   health_1 = tree.health(0)

  #   assert_equal health_1, [[71, 99, 100]]
  # end
  # def test_bst_health_has_correct_output_with_inserts
  #   tree = BinarySearchTree.new
  #   tree.insert(98, "Animals United")
  #   tree.insert(58, "Armageddon")
  #   tree.insert(36, "Bill & Ted's Bogus Journey")
  #   tree.insert(93, "Bill & Ted's Excellent Adventure")
  #   tree.insert(86, "Charlie's Angels")
  #   tree.insert(38, "Charlie's Country")
  #   tree.insert(69, "Collateral Damage")

  #   health_1 = tree.health(0)
  #   health_2 = tree.health(1)
  #   health_3 = tree.health(2)

  #   assert_equal health_1, [[98, 7, 100]]
  #   assert_equal health_2, [[58, 6, 85]]
  #   assert_equal health_3, [[36, 2, 28], [93, 3, 42]]
  # end


end

