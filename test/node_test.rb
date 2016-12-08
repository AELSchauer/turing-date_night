require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_exists
    # skip #basic
    movie_rating = 61
    movie_title = "Bill and Ted's Excellent Adventure"
    node = Node.new(movie_rating, movie_title)
    assert node
    assert_equal node.movie_rating, movie_rating
    assert_equal node.movie_title, movie_title
  end
  def test_higher_link_has_higher_rating
    # skip #basic
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    head.insert(10, "Titanic")
    head.insert(92, "Sharknado 3")
    assert_equal 92, head.higher_link.movie_rating
  end
  def test_lower_link_has_lower_rating
    # skip #basic
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    head.insert(10, "Titanic")
    head.insert(92, "Sharknado 3")
    assert_equal 10, head.lower_link.movie_rating
  end
  def test_insert_unique
    # skip #insert
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    depth_1 = head.insert(10, "Titanic")
    assert_equal 1, depth_1
  end
  def test_insert_duplicate
    # skip #insert
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    head.insert(10, "Titanic")
    depth_1 = head.insert(10, "Titanic")
    assert_nil depth_1
  end
  def test_many_inserts
    # skip #insert
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    insert_1 = head.insert(4, "Shakespeare in Love")
    insert_2 = head.insert(16, "Johnny English")
    insert_3 = head.insert(7, "When Harry Met Sally")
    insert_4 = head.insert(10, "Titanic")
    insert_5 = head.insert(92, "Sharknado 3")
    insert_6 = head.insert(73, "The Room")
    insert_7 = head.insert(87, "The Scorpion King 4: Quest for Power")
    insert_8 = head.insert(84, "Waterworld")

    assert_equal 1, insert_1
    assert_equal 2, insert_2
    assert_equal 3, insert_3
    assert_equal 4, insert_4
    assert_equal 1, insert_5
    assert_equal 2, insert_6
    assert_equal 3, insert_7
    assert_equal 4, insert_8
  end
  def test_get_descendant_nodes_no_links
    # skip #node_get_child
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    child_nodes = head.get_descendant_nodes
    assert_equal [], child_nodes
  end
  def test_get_descendant_nodes_after_one_insert
    # skip #node_get_child
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    head.insert(10, "Titanic")
    child_nodes = head.get_descendant_nodes
    assert_equal 10, child_nodes[0].movie_rating
  end
  def test_get_descendant_nodes_after_many_inserts
    # skip #node_get_child
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    head.insert(4, "Shakespeare in Love")
    head.insert(16, "Johnny English")
    head.insert(7, "When Harry Met Sally")
    head.insert(10, "Titanic")
    head.insert(92, "Sharknado 3")
    head.insert(73, "The Room")
    head.insert(87, "The Scorpion King 4: Quest for Power")
    head.insert(84, "Waterworld")
    child_nodes = head.get_descendant_nodes

    assert_equal 4, child_nodes[0].movie_rating 
    assert_equal 16, child_nodes[1].movie_rating 
    assert_equal 7, child_nodes[2].movie_rating 
    assert_equal 10, child_nodes[3].movie_rating
    assert_equal 92, child_nodes[4].movie_rating
    assert_equal 73, child_nodes[5].movie_rating
    assert_equal 87, child_nodes[6].movie_rating
    assert_equal 84, child_nodes[7].movie_rating
  end

  def test_get_node_by_depth_no_inserts
    # skip #node_get_by_depth
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    depth_1 = head.get_nodes_by_depth(1)
    assert_equal [], depth_1
  end
  def test_get_node_by_depth_many_inserts
    # skip #node_get_by_depth
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    head.insert(4, "Shakespeare in Love")
    head.insert(16, "Johnny English")
    head.insert(7, "When Harry Met Sally")
    head.insert(10, "Titanic")
    head.insert(92, "Sharknado 3")
    head.insert(73, "The Room")
    head.insert(87, "The Scorpion King 4: Quest for Power")
    head.insert(84, "Waterworld")

    depth_1 = head.get_nodes_by_depth(1)
    depth_2 = head.get_nodes_by_depth(2)
    depth_3 = head.get_nodes_by_depth(3)
    depth_4 = head.get_nodes_by_depth(4)

    assert_equal 4, depth_1[0].movie_rating
    assert_equal 92, depth_1[1].movie_rating
    assert_equal 16, depth_2[0].movie_rating
    assert_equal 73, depth_2[1].movie_rating
    assert_equal 7, depth_3[0].movie_rating
    assert_equal 87, depth_3[1].movie_rating
    assert_equal 10, depth_4[0].movie_rating
    assert_equal 84, depth_4[1].movie_rating
  end

  def test_get_parent_node_of_head_node
    # skip #get_parent_node
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    parent_node = head.get_parent_node(head)
    assert_nil parent_node
  end
  def test_get_parent_node_of_level_one_lower_node
    # skip #get_parent_node
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    head.insert(4, "Shakespeare in Love")
    child_node = head.get_node_by_movie_rating(4)
    parent_node = head.get_parent_node(child_node)

    assert_equal 61, parent_node.movie_rating
  end
    def test_get_parent_node_of_level_two_lower_node
    # skip #get_parent_node
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    head.insert(4, "Shakespeare in Love")
    head.insert(16, "Johnny English")
    child_node = head.get_node_by_movie_rating(16)
    parent_node = head.get_parent_node(child_node)
    
    assert_equal 4, parent_node.movie_rating
  end
  def test_get_parent_node_of_level_one_higher_node
    # skip #get_parent_node
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    head.insert(92, "Sharknado 3")
    child_node = head.get_node_by_movie_rating(92)
    parent_node = head.get_parent_node(child_node)

    assert_equal 61, parent_node.movie_rating
  end
    def test_get_parent_node_of_level_two_higher_node
    # skip #get_parent_node
    head = Node.new(61, "Bill and Ted's Excellent Adventure")
    head.insert(92, "Sharknado 3")
    head.insert(73, "The Room")
    child_node = head.get_node_by_movie_rating(73)
    parent_node = head.get_parent_node(child_node)
    
    assert_equal 92, parent_node.movie_rating
  end

end