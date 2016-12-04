require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'
require './lib/node'

class BinarySearchTreeTest < Minitest::Test
	###### Development only tests!


	###### Final product tests
	# def test_bst_has_correct_output_after_first_insert	## all test definitions have to start with 'test_'
	# 	tree = BinarySearchTree.new
	# 	insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")

	# 	assert_equal insert_1, 0
	# end
	# def test_bst_has_correct_output_after_second_insert
	# 	tree = BinarySearchTree.new

	# 	insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	insert_2 = tree.insert(16, "Johnny English")

	# 	assert_equal insert_1, 0
	# 	assert_equal insert_2, 1
	# end
	# def test_bst_has_correct_output_after_third_insert
	# 	tree = BinarySearchTree.new

	# 	insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	insert_2 = tree.insert(16, "Johnny English")
	# 	insert_3 = tree.insert(92, "Sharknado 3")

	# 	assert_equal insert_1, 0
	# 	assert_equal insert_2, 1
	# 	assert_equal insert_3, 1
	# end
	# def test_bst_has_correct_output_after_five_lower
	# 	tree = BinarySearchTree.new

	# 	insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
	# 	insert_2 = tree.insert(16, "Johnny English")
	# 	insert_3 = tree.insert(10, "Titanic")
	# 	insert_4 = tree.insert(7, "Shakespare in Love")
	# 	insert_5 = tree.insert(4, "When Harry Met Sally")

	# 	assert_equal insert_1, 0
	# 	assert_equal insert_2, 1
	# 	assert_equal insert_3, 2
	# 	assert_equal insert_4, 3
	# 	assert_equal insert_5, 4
	# end
	# def test_bst_has_correct_output_after_five_zig_zag_lower
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
	# def test_bst_has_correct_output_after_five_higher
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
	# def test_bst_has_correct_output_after_five_zig_zag_higher
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

end

