require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'
require './lib/node'

class BinarySearchTreeTest < Minitest::Test
	###### Development only tests!


	###### Final product tests
	# def test_bst_insert_has_correct_output_after_first_insert	## all test definitions have to start with 'test_'
	# 	tree = BinarySearchTree.new
	# 	insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")

	# 	assert_equal insert_1, 0
	# end
	# def test_bst_insert_has_correct_output_after_second_insert
	# 	tree = BinarySearchTree.new

	# 	insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	insert_2 = tree.insert(16, "Johnny English")

	# 	assert_equal insert_1, 0
	# 	assert_equal insert_2, 1
	# end
	# def test_bst_insert_has_correct_output_after_third_insert
	# 	tree = BinarySearchTree.new

	# 	insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	insert_2 = tree.insert(16, "Johnny English")
	# 	insert_3 = tree.insert(92, "Sharknado 3")

	# 	assert_equal insert_1, 0
	# 	assert_equal insert_2, 1
	# 	assert_equal insert_3, 1
	# end
	# def test_bst_insert_has_correct_output_after_five_lower
	# 	tree = BinarySearchTree.new

	# 	insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	insert_2 = tree.insert(16, "Johnny English")
	# 	insert_3 = tree.insert(10, "Titanic")
	# 	insert_4 = tree.insert(7, "When Harry Met Sally")
	# 	insert_5 = tree.insert(4, "Shakespare in Love")

	# 	assert_equal insert_1, 0
	# 	assert_equal insert_2, 1
	# 	assert_equal insert_3, 2
	# 	assert_equal insert_4, 3
	# 	assert_equal insert_5, 4
	# end
	# def test_bst_insert_has_correct_output_after_five_zig_zag_lower
	# 	tree = BinarySearchTree.new

	# 	insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	insert_2 = tree.insert(4, "Shakespare in Love")
	# 	insert_3 = tree.insert(16, "Johnny English")
	# 	insert_4 = tree.insert(7, "When Harry Met Sally")
	# 	insert_5 = tree.insert(10, "Titanic")

	# 	assert_equal insert_1, 0
	# 	assert_equal insert_2, 1
	# 	assert_equal insert_3, 2
	# 	assert_equal insert_4, 3
	# 	assert_equal insert_5, 4
	# end
	# def test_bst_insert_has_correct_output_after_five_higher
	# 	tree = BinarySearchTree.new

	# 	insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	insert_2 = tree.insert(73, "The Room")
	# 	insert_3 = tree.insert(84, "Waterworld")
	# 	insert_4 = tree.insert(87, "The Scorpion King 4: Quest for Power")
	# 	insert_5 = tree.insert(92, "Sharknado 3")

	# 	assert_equal insert_1, 0
	# 	assert_equal insert_2, 1
	# 	assert_equal insert_3, 2
	# 	assert_equal insert_4, 3
	# 	assert_equal insert_5, 4
	# end
	# def test_bst_insert_has_correct_output_after_five_zig_zag_higher
	# 	tree = BinarySearchTree.new

	# 	insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	insert_2 = tree.insert(92, "Sharknado 3")
	# 	insert_3 = tree.insert(73, "The Room")
	# 	insert_4 = tree.insert(87, "The Scorpion King 4: Quest for Power")
	# 	insert_5 = tree.insert(84, "Waterworld")

	# 	assert_equal insert_1, 0
	# 	assert_equal insert_2, 1
	# 	assert_equal insert_3, 2
	# 	assert_equal insert_4, 3
	# 	assert_equal insert_5, 4
	# end




	# def test_bst_include_has_correct_output_after_zero_inserts
	# 	tree = BinarySearchTree.new

	# 	include_1 = tree.include?(61)
	# 	include_2 = tree.include?(16)
	# 	include_3 = tree.include?(92)

	# 	assert_equal include_1, false
	# 	assert_equal include_2, false
	# 	assert_equal include_3, false
	# end
	# def test_bst_include_has_correct_output_after_first_insert
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
		
	# 	include_1 = tree.include?(61)
	# 	include_2 = tree.include?(16)
	# 	include_3 = tree.include?(92)

	# 	assert_equal include_1, true
	# 	assert_equal include_2, false
	# 	assert_equal include_3, false
	# end
	# def ttest_bst_include_has_correct_output_after_second_insert
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(16, "Johnny English")

	# 	include_1 = tree.include?(61)
	# 	include_2 = tree.include?(16)
	# 	include_3 = tree.include?(92)

	# 	assert_equal include_1, true
	# 	assert_equal include_2, true
	# 	assert_equal include_3, false
	# end
	# def test_bst_include_has_correct_output_after_third_insert
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(16, "Johnny English")
	# 	tree.insert(92, "Sharknado")

	# 	include_1 = tree.include?(61)
	# 	include_2 = tree.include?(16)
	# 	include_3 = tree.include?(92)

	# 	assert_equal include_1, true
	# 	assert_equal include_2, true
	# 	assert_equal include_3, true
	# end




	# def test_bst_max_has_correct_output_after_zero_inserts
	# 	tree = BinarySearchTree.new

	# 	max_rating = tree.max

	# 	assert_equal max_rating, {}
	# end
	# def test_bst_max_has_correct_output_after_first_insert
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")

	# 	max_rating = tree.max

	# 	assert_equal max_rating, {"Bill and Ted's Excellent Adventure" => 61}
	# end
	# def ttest_bst_max_has_correct_output_after_second_insert
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(16, "Johnny English")

	# 	max_rating = tree.max

	# 	assert_equal max_rating, {"Bill and Ted's Excellent Adventure" => 61}
	# end
	# def test_bst_max_has_correct_output_after_third_insert
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(16, "Johnny English")
	# 	tree.insert(92, "Sharknado 3")

	# 	max_rating = tree.max

	# 	assert_equal max_rating, {"Sharknado 3" => 92}
	# end

	# def test_bst_insert_has_correct_output_after_five_higher
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(73, "The Room")
	# 	tree.insert(84, "Waterworld")
	# 	tree.insert(87, "The Scorpion King 4: Quest for Power")
	# 	tree.insert(92, "Sharknado 3")

	# 	max_rating = tree.max

	# 	assert_equal max_rating, {"Sharknado 3" => 92}
	# end
	# def test_bst_insert_has_correct_output_after_five_zig_zag_higher
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(92, "Sharknado 3")
	# 	tree.insert(73, "The Room")
	# 	tree.insert(87, "The Scorpion King 4: Quest for Power")
	# 	tree.insert(84, "Waterworld")

	# 	max_rating = tree.max

	# 	assert_equal max_rating, {"Sharknado 3" => 92}
	# end
	# def test_bst_insert_has_correct_output_after_five_lower
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(16, "Johnny English")
	# 	tree.insert(10, "Titanic")
	# 	tree.insert(7, "When Harry Met Sally")
	# 	tree.insert(4, "Shakespare in Love")

	# 	max_rating = tree.max

	# 	assert_equal max_rating, {"Bill and Ted's Excellent Adventure" => 61}
	# end
	# def test_bst_insert_has_correct_output_after_five_zig_zag_lower
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(4, "Shakespare in Love")
	# 	tree.insert(16, "Johnny English")
	# 	tree.insert(7, "When Harry Met Sally")
	# 	tree.insert(10, "Titanic")

	# 	max_rating = tree.max

	# 	assert_equal max_rating, {"Bill and Ted's Excellent Adventure" => 61}
	# end




	# def test_bst_min_has_correct_output_after_zero_inserts
	# 	tree = BinarySearchTree.new

	# 	min_rating = tree.min

	# 	assert_equal min_rating, {}
	# end
	# def test_bst_min_has_correct_output_after_first_insert
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")

	# 	min_rating = tree.min

	# 	assert_equal min_rating, {"Bill and Ted's Excellent Adventure" => 61}
	# end
	# def ttest_bst_min_has_correct_output_after_second_insert
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(16, "Johnny English")

	# 	min_rating = tree.min

	# 	assert_equal min_rating, {"Johnny English" => 16}
	# end
	# def test_bst_min_has_correct_output_after_third_insert
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(16, "Johnny English")
	# 	tree.insert(92, "Sharknado 3")

	# 	min_rating = tree.min

	# 	assert_equal min_rating, {"Johnny English" => 16}
	# end

	# def test_bst_insert_has_correct_output_after_five_higher
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(73, "The Room")
	# 	tree.insert(84, "Waterworld")
	# 	tree.insert(87, "The Scorpion King 4: Quest for Power")
	# 	tree.insert(92, "Sharknado 3")

	# 	min_rating = tree.min

	# 	assert_equal min_rating, {"Bill and Ted's Excellent Adventure" => 61}
	# end
	# def test_bst_insert_has_correct_output_after_five_zig_zag_higher
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61, "Bill and Ted's Excellent Adventure")
	# 	tree.insert(92, "Sharknado 3")
	# 	tree.insert(73, "The Room")
	# 	tree.insert(87, "The Scorpion King 4: Quest for Power")
	# 	tree.insert(84, "Waterworld")

	# 	min_rating = tree.min

	# 	assert_equal min_rating, {"Bill and Ted's Excellent Adventure" => 61}
	# end
	# def test_bst_insert_has_correct_output_after_five_lower
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(16, "Johnny English")
	# 	tree.insert(10, "Titanic")
	# 	tree.insert(7, "When Harry Met Sally")
	# 	tree.insert(4, "Shakespare in Love")

	# 	min_rating = tree.min

	# 	assert_equal min_rating, {"Shakespare in Love" => 4}
	# end
	# def test_bst_insert_has_correct_output_after_five_zig_zag_lower
	# 	tree = BinarySearchTree.new
	# 	tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	tree.insert(4, "Shakespare in Love")
	# 	tree.insert(16, "Johnny English")
	# 	tree.insert(7, "When Harry Met Sally")
	# 	tree.insert(10, "Titanic")

	# 	min_rating = tree.min

	# 	assert_equal min_rating, {"Shakespare in Love" => 4}
	# end




	def test_bst_height_has_correct_output_after_zero_inserts
		tree = BinarySearchTree.new

		depth_1 = tree.depth_of(61)
		depth_2 = tree.depth_of(16)
		depth_3 = tree.depth_of(92)

		assert_equal depth_1, nil
		assert_equal depth_2, nil
		assert_equal depth_3, nil
	end
	def test_bst_height_has_correct_output_after_one_insert
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")

		depth_1 = tree.depth_of(61)
		depth_2 = tree.depth_of(16)
		depth_3 = tree.depth_of(92)

		assert_equal depth_1, 0
		assert_equal depth_2, nil
		assert_equal depth_3, nil
	end
	def test_bst_height_has_correct_output_after_two_inserts
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(16, "Johnny English")

		depth_1 = tree.depth_of(61)
		depth_2 = tree.depth_of(16)
		depth_3 = tree.depth_of(92)

		assert_equal depth_1, 0
		assert_equal depth_2, 1
		assert_equal depth_3, nil
	end
	def test_bst_height_has_correct_output_after_three_inserts
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
	def test_bst_height_has_correct_output_after_many_inserts
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

end

