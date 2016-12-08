require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_search_tree'

class BinarySearchTreeTest < Minitest::Test

	def test_exists
		# skip #basic
		tree = BinarySearchTree.new
		assert tree
	end

	def test_insert_has_correct_output_after_first_insert
		# skip #insert
		tree = BinarySearchTree.new
		insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
		assert_equal insert_1, 0
	end
	def test_insert_has_correct_output_after_second_insert
		# skip #insert
		tree = BinarySearchTree.new
		insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
		insert_2 = tree.insert(16, "Johnny English")
		assert_equal insert_1, 0
		assert_equal insert_2, 1
	end
	def test_insert_has_correct_output_after_third_insert
		# skip #insert
		tree = BinarySearchTree.new
		insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
		insert_2 = tree.insert(16, "Johnny English")
		insert_3 = tree.insert(92, "Sharknado 3")
		assert_equal insert_1, 0
		assert_equal insert_2, 1
		assert_equal insert_3, 1
	end
	def test_insert_has_correct_output_after_five_lower
		# skip #insert
		tree = BinarySearchTree.new
		insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
		insert_2 = tree.insert(16, "Johnny English")
		insert_3 = tree.insert(10, "Titanic")
		insert_4 = tree.insert(7, "When Harry Met Sally")
		insert_5 = tree.insert(4, "Shakespeare in Love")
		assert_equal insert_1, 0
		assert_equal insert_2, 1
		assert_equal insert_3, 2
		assert_equal insert_4, 3
		assert_equal insert_5, 4
	end
	def test_insert_has_correct_output_after_five_zig_zag_lower
		# skip #insert
		tree = BinarySearchTree.new
		insert_1 = tree.insert(61,"Bill and Ted's Excellent Adventure")
		insert_2 = tree.insert(4, "Shakespeare in Love")
		insert_3 = tree.insert(16, "Johnny English")
		insert_4 = tree.insert(7, "When Harry Met Sally")
		insert_5 = tree.insert(10, "Titanic")
		assert_equal insert_1, 0
		assert_equal insert_2, 1
		assert_equal insert_3, 2
		assert_equal insert_4, 3
		assert_equal insert_5, 4
	end
	def test_insert_has_correct_output_after_five_higher
		# skip #insert
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
	def test_insert_has_correct_output_after_five_zig_zag_higher
		# skip #insert
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

	def test_include_has_correct_output_after_zero_inserts
		# skip #include
		tree = BinarySearchTree.new
		include_1 = tree.include?(61)
		include_2 = tree.include?(16)
		include_3 = tree.include?(92)
		assert_equal include_1, false
		assert_equal include_2, false
		assert_equal include_3, false
	end
	def test_include_has_correct_output_after_first_insert
		# skip #include
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		include_1 = tree.include?(61)
		include_2 = tree.include?(16)
		include_3 = tree.include?(92)
		assert_equal include_1, true
		assert_equal include_2, false
		assert_equal include_3, false
	end
	def test_include_has_correct_output_after_second_insert
		# skip #include
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
	def test_include_has_correct_output_after_third_insert
		# skip #include
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

	def test_max_has_correct_output_after_zero_inserts
		# skip #max
		tree = BinarySearchTree.new
		max_rating = tree.max
		assert_equal max_rating, {}
	end
	def test_max_has_correct_output_after_first_insert
		# skip #max
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		max_rating = tree.max
		assert_equal max_rating, {"Bill and Ted's Excellent Adventure" => 61}
	end
	def test_max_has_correct_output_after_second_insert
		# skip #max
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(16, "Johnny English")
		max_rating = tree.max
		assert_equal max_rating, {"Bill and Ted's Excellent Adventure" => 61}
	end
	def test_max_has_correct_output_after_third_insert
		# skip #max
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(16, "Johnny English")
		tree.insert(92, "Sharknado 3")
		max_rating = tree.max
		assert_equal max_rating, {"Sharknado 3" => 92}
	end
	def test_max_has_correct_output_after_five_higher
		# skip #max
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(73, "The Room")
		tree.insert(84, "Waterworld")
		tree.insert(87, "The Scorpion King 4: Quest for Power")
		tree.insert(92, "Sharknado 3")
		max_rating = tree.max
		assert_equal max_rating, {"Sharknado 3" => 92}
	end
	def test_max_has_correct_output_after_five_zig_zag_higher
		# skip #max
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(92, "Sharknado 3")
		tree.insert(73, "The Room")
		tree.insert(87, "The Scorpion King 4: Quest for Power")
		tree.insert(84, "Waterworld")
		max_rating = tree.max
		assert_equal max_rating, {"Sharknado 3" => 92}
	end
	def test_max_has_correct_output_after_five_lower
		# skip #max
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(16, "Johnny English")
		tree.insert(10, "Titanic")
		tree.insert(7, "When Harry Met Sally")
		tree.insert(4, "Shakespeare in Love")
		max_rating = tree.max
		assert_equal max_rating, {"Bill and Ted's Excellent Adventure" => 61}
	end
	def test_max_has_correct_output_after_five_zig_zag_lower
		# skip #max
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(4, "Shakespeare in Love")
		tree.insert(16, "Johnny English")
		tree.insert(7, "When Harry Met Sally")
		tree.insert(10, "Titanic")
		max_rating = tree.max
		assert_equal max_rating, {"Bill and Ted's Excellent Adventure" => 61}
	end

	def test_min_has_correct_output_after_zero_inserts
		# skip #min
		tree = BinarySearchTree.new
		min_rating = tree.min
		assert_equal min_rating, {}
	end
	def test_min_has_correct_output_after_first_insert
		# skip #min
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		min_rating = tree.min
		assert_equal min_rating, {"Bill and Ted's Excellent Adventure" => 61}
	end
	def test_min_has_correct_output_after_second_insert
		# skip #min
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(16, "Johnny English")
		min_rating = tree.min
		assert_equal min_rating, {"Johnny English" => 16}
	end
	def test_min_has_correct_output_after_third_insert
		# skip #min
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(16, "Johnny English")
		tree.insert(92, "Sharknado 3")
		min_rating = tree.min
		assert_equal min_rating, {"Johnny English" => 16}
	end
	def test_min_has_correct_output_after_five_higher
		# skip #min
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(73, "The Room")
		tree.insert(84, "Waterworld")
		tree.insert(87, "The Scorpion King 4: Quest for Power")
		tree.insert(92, "Sharknado 3")
		min_rating = tree.min
		assert_equal min_rating, {"Bill and Ted's Excellent Adventure" => 61}
	end
	def test_min_has_correct_output_after_five_zig_zag_higher
		# skip #min
		tree = BinarySearchTree.new
		tree.insert(61, "Bill and Ted's Excellent Adventure")
		tree.insert(92, "Sharknado 3")
		tree.insert(73, "The Room")
		tree.insert(87, "The Scorpion King 4: Quest for Power")
		tree.insert(84, "Waterworld")
		min_rating = tree.min
		assert_equal min_rating, {"Bill and Ted's Excellent Adventure" => 61}
	end
	def test_min_has_correct_output_after_five_lower
		# skip #min
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(16, "Johnny English")
		tree.insert(10, "Titanic")
		tree.insert(7, "When Harry Met Sally")
		tree.insert(4, "Shakespeare in Love")
		min_rating = tree.min
		assert_equal min_rating, {"Shakespeare in Love" => 4}
	end
	def test_min_has_correct_output_after_five_zig_zag_lower
		# skip #min
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(4, "Shakespeare in Love")
		tree.insert(16, "Johnny English")
		tree.insert(7, "When Harry Met Sally")
		tree.insert(10, "Titanic")
		min_rating = tree.min
		assert_equal min_rating, {"Shakespeare in Love" => 4}
	end

	def test_depth_of_has_correct_output_after_zero_inserts
		# skip #depth_of
		tree = BinarySearchTree.new
		depth_1 = tree.depth_of(61)
		depth_2 = tree.depth_of(16)
		depth_3 = tree.depth_of(92)
		assert_nil depth_1
		assert_nil depth_2
		assert_nil depth_3
	end
	def test_depth_of_has_correct_output_after_one_insert
		# skip #depth_of
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		depth_1 = tree.depth_of(61)
		depth_2 = tree.depth_of(16)
		depth_3 = tree.depth_of(92)
		assert_equal depth_1, 0
		assert_nil depth_2
		assert_nil depth_3
	end
	def test_depth_of_has_correct_output_after_two_inserts
		# skip #depth_of
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
	def test_depth_of_has_correct_output_after_three_inserts
		# skip #depth_of
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
	def test_depth_of_has_correct_output_after_many_inserts
		# skip #depth_of
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

	def test_sort_has_correct_output_after_zero_inserts
		# skip #sort
		tree = BinarySearchTree.new
		sort_1 = tree.sort
		assert_equal sort_1, []
	end
	def test_sort_has_correct_output_after_one_insert
		# skip #sort
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		sort_1 = tree.sort
		assert_equal sort_1, [{"Bill and Ted's Excellent Adventure" => 61}]
	end
	def test_sort_has_correct_output_after_three_inserts
		# skip #sort
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(10, "Titanic")
		tree.insert(84, "Waterworld")
		sort_1 = tree.sort
		assert_equal sort_1, [{"Titanic" => 10}, {"Bill and Ted's Excellent Adventure" => 61}, {"Waterworld" => 84}]
	end
	def test_sort_has_correct_output_after_many_inserts
		# skip #sort
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

	def test_load_has_correct_output_after_nonexistent_file
		# skip #load
		tree = BinarySearchTree.new
		load_1 = tree.load("text-files/not_a_file.txt")
		assert_nil load_1
	end
	def test_load_has_correct_output_after_empty_file
		# skip #load
		tree = BinarySearchTree.new
		upload_count = tree.load("text-files/movies_empty.txt")
		assert_equal 0, upload_count
	end
	def test_load_has_correct_output_after_short_file
		# skip #load
		tree = BinarySearchTree.new
		upload_count = tree.load("text-files/movies_short.txt")
		assert_equal 4, upload_count
	end
	def test_load_has_correct_output_after_medium_file
		# skip #load
		tree = BinarySearchTree.new
		upload_count = tree.load("text-files/movies_medium.txt")
		assert_equal 9, upload_count
	end
	def test_load_has_correct_output_after_long_file
		# skip #load
		tree = BinarySearchTree.new
		upload_count = tree.load("text-files/movies_long.txt")
		assert_equal 99, upload_count
	end
	def test_load_has_correct_output_comparing_unique_and_not_unique
		# skip #load
		tree_1 = BinarySearchTree.new
		tree_2 = BinarySearchTree.new
		upload_count_1 = tree_1.load("text-files/movies_medium.txt")
		upload_count_2 = tree_2.load("text-files/movies_medium_not_unique.txt")
		assert_equal upload_count_1 == upload_count_2, true
	end
	def test_load_has_correct_output_after_upload_same_file_twice
		# skip #load
		tree_1 = BinarySearchTree.new
		tree_1.load("text-files/movies_medium.txt")
		upload_count = tree_1.load("text-files/movies_medium.txt")
		assert_equal 0, upload_count
	end

	def test_health_has_correct_output_with_no_inserts
		# skip #health
		tree = BinarySearchTree.new
		assert_nil tree.health(0)
	end
	def test_health_has_correct_output_with_few_inserts
		# skip #health
		tree = BinarySearchTree.new
		tree.insert(61, "Bill & Ted's Excellent Adventure")
		tree.insert(4, "Shakespeare in Love")
		tree.insert(92, "Sharknado 3")
		health_1 = tree.health(0)
		health_2 = tree.health(1)
		assert_equal [[61, 3, 100]], health_1
		assert_equal [[4, 1, 33], [92, 1, 33]], health_2
	end
	def test_health_has_correct_output_with_many_inserts
		# skip #health
		tree = BinarySearchTree.new
		tree.insert(98, "Animals United")
		tree.insert(58, "Armageddon")
		tree.insert(36, "Bill & Ted's Bogus Journey")
		tree.insert(93, "Bill & Ted's Excellent Adventure")
		tree.insert(86, "Charlie's Angels")
		tree.insert(38, "Charlie's Country")
		tree.insert(69, "Collateral Damage")
		health_1 = tree.health(0)
		health_2 = tree.health(1)
		health_3 = tree.health(2)
		assert_equal [[98, 7, 100]], health_1
		assert_equal [[58, 6, 85]], health_2
		assert_equal [[36, 2, 28], [93, 3, 42]], health_3
	end
	def test_health_has_correct_output_with_upload
		# skip #health
		tree = BinarySearchTree.new
		tree.load("text-files/movies_medium.txt")
		health_1 = tree.health(0)
		health_2 = tree.health(1)
		health_3 = tree.health(2)
		health_4 = tree.health(3)
		health_5 = tree.health(4)
		assert_equal [[61, 9, 100]], health_1
		assert_equal [[4, 4, 44], [92, 4, 44]], health_2
		assert_equal [[16, 3, 33], [73, 3, 33]], health_3
		assert_equal [[7, 2, 22], [87, 2, 22]], health_4
		assert_equal [[10, 1, 11], [84, 1, 11]], health_5
	end
	def test_health_has_correct_output_with_large_upload
		# skip #health
		tree = BinarySearchTree.new
		tree.load("text-files/movies_long.txt")
		health_1 = tree.health(0)
		assert_equal health_1, [[71, 99, 100]]
	end

	def test_delete_head_no_descendants
		# skip #delete
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		delete_1 = tree.delete(61)
		assert_equal 61, delete_1
	end
	def test_delete_head_one_descendant
		# skip #delete
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(73, "The Room")
		delete_1 = tree.delete(61)
		depth_of_1 = tree.depth_of(73)
		assert_equal 61, delete_1
		assert_equal 0, depth_of_1
	end
	def test_delete_head_two_descendants
		# skip #delete
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(73, "The Room")
		delete_1 = tree.delete(61)
		depth_of_1 = tree.depth_of(73)
		assert_equal 61, delete_1
		assert_equal 0, depth_of_1
	end
	def test_delete_head_many_descendants
		# skip #delete
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(4, "Shakespeare in Love")
		tree.insert(92, "Sharknado 3")
		tree.insert(73, "The Room")
		tree.insert(16, "Johnny English")
		delete_1 = tree.delete(61)
		depth_of_1 = tree.depth_of(4)
		depth_of_2 = tree.depth_of(16)
		depth_of_3 = tree.depth_of(73)
		depth_of_4 = tree.depth_of(92)
		assert_equal 61, delete_1
		assert_equal 1, depth_of_1
		assert_equal 2, depth_of_2
		assert_equal 0, depth_of_3
		assert_equal 1, depth_of_4
	end
	def test_delete_node_no_descendants
		# skip #delete
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(4, "Shakespeare in Love")
		tree.insert(92, "Sharknado 3")
		delete_1 = tree.delete(4)
		assert_equal 4, delete_1
	end
	def test_delete_node_one_descendant
		# skip #delete
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(10, "Titanic")
		tree.insert(87, "The Scorpion King 4: Quest for Power")
		tree.insert(4, "Shakespeare in Love")
		tree.insert(16, "Johnny English")
		tree.insert(73, "The Room")
		tree.insert(92, "Sharknado 3")
		tree.insert(7, "When Harry Met Sally")
		tree.insert(84, "Waterworld")
		delete_1 = tree.delete(73)
		depth_of_1 = tree.depth_of(84) 
		delete_2 = tree.delete(16)
		depth_of_2 = tree.depth_of(7)
		assert_equal 73, delete_1
		assert_equal 2, depth_of_1
		assert_equal 16, delete_2
		assert_equal 3, depth_of_2
	end
	def test_delete_node_many_descendants
		# skip #delete
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(10, "Titanic")
		tree.insert(87, "The Scorpion King 4: Quest for Power")
		tree.insert(4, "Shakespeare in Love")
		tree.insert(16, "Johnny English")
		tree.insert(73, "The Room")
		tree.insert(92, "Sharknado 3")
		tree.insert(7, "When Harry Met Sally")
		tree.insert(84, "Waterworld")
		delete_1 = tree.delete(87)
		depth_of_1c1 = tree.depth_of(92)
		depth_of_1c2 = tree.depth_of(84)
		depth_of_1c3 = tree.depth_of(73)
		delete_2 = tree.delete(10)
		depth_of_2c1 = tree.depth_of(16)
		depth_of_2c2 = tree.depth_of(7)
		depth_of_2c3 = tree.depth_of(4)
		assert_equal 87,	delete_1
		assert_equal 3, 	depth_of_1c1
		assert_equal 2, 	depth_of_1c2
		assert_equal 1, 	depth_of_1c3
		assert_equal 10,	delete_2
		assert_equal 3,		depth_of_2c1
		assert_equal 2,		depth_of_2c2
		assert_equal 1,		depth_of_2c3
	end

	def test_leaves_head_only
		# skip #leaves
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		leaves_1 = tree.leaves
		assert_equal 1, leaves_1
	end
	def test_leaves_few_leaves
		# skip #leaves
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(10, "Titanic")
		tree.insert(87, "The Scorpion King 4: Quest for Power")
		leaves_1 = tree.leaves
		assert_equal 2, leaves_1
	end
	def test_leaves_many_leaves
		# skip #leaves
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(10, "Titanic")
		tree.insert(87, "The Scorpion King 4: Quest for Power")
		tree.insert(4, "Shakespeare in Love")
		tree.insert(16, "Johnny English")
		tree.insert(73, "The Room")
		tree.insert(92, "Sharknado 3")
		leaves_1 = tree.leaves
		assert_equal 4, leaves_1
	end

	def test_height_zero_levels
		# skip #leaves
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		height_1 = tree.height
		assert_equal 0, height_1
	end
	def test_height_one_level
		# skip #leaves
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(10, "Titanic")
		height_1 = tree.height
		assert_equal 1, height_1
	end
	def test_height_two_levels
		# skip #leaves
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(10, "Titanic")
		tree.insert(4, "Shakespeare in Love")
		height_1 = tree.height
		assert_equal 2, height_1
	end
	def test_height_three_levels
		# skip #leaves
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(10, "Titanic")
		tree.insert(4, "Shakespeare in Love")
		tree.insert(7, "When Harry Met Sally")
		height_1 = tree.height
		assert_equal 3, height_1
	end
	def test_height_four_levels
		# skip #leaves
		tree = BinarySearchTree.new
		tree.insert(61,"Bill and Ted's Excellent Adventure")
		tree.insert(10, "Titanic")
		tree.insert(4, "Shakespeare in Love")
		tree.insert(7, "When Harry Met Sally")
		tree.insert(6, "Sleepless in Seattle")
		height_1 = tree.height
		assert_equal 4, height_1
	end

end
