require './lib/node'
require './lib/insertion_sort'
require './lib/load'
require 'pry'

class BinarySearchTree

	attr_reader :head

	def insert(movie_rating, movie_title)
		if @head.nil?
			@head = Node.new(movie_rating, movie_title)
			return 0
		else
      return @head.insert(movie_rating, movie_title)
		end #NOT DONE
	end

	def include?(movie_rating) #NOT DONE
		if @head.nil?
			return false
		else
			node = @head.get_node_by_movie_rating(movie_rating)
			node.nil? ? false : true
		end
	end

	def max #NOT DONE
		return maxmin("max")
	end

	def min #NOT DONE
		return maxmin("min")
	end

	def depth_of(movie_rating) #NOT DONE
		if @head.nil?
			return nil
		else
			node = @head.get_node_by_movie_rating(movie_rating)
			node.nil? ? nil : node.depth
		end
	end

	def sort
		if @head.nil?
			return []
		else
			nodes = @head.get_child_nodes
			nodes.push(@head)
			sorter = InsertionSort.new
			nodes = sorter.sort(nodes)
			return nodes.map { |sorted_node| {sorted_node.movie_title => sorted_node.movie_rating} }
		end #NOT DONE
	end

	def load(file_name)
		loader = Load.new
		opened_file = loader.open_file(file_name)
		if opened_file.nil?
			return nil
		else
			upload_count = 0
			movies = loader.retrieve_movies_list(opened_file)
			movies.each do |movie_rating, movie_title|
				depth = insert(movie_rating, movie_title)
				if not depth.nil?
					upload_count += 1
				end
			end
			return upload_count
		end#NOT DONE
	end

	def health(desired_depth) #NOT DONE
		if @head.nil?
			return nil
		else
			return get_health_list(desired_depth)
		end
	end

	#### Extensions

	# def delete(movie_rating)
	# 	depth, node = get_nodes_by_rating(@head, movie_rating, 0)
	# 	parent_node = get_parent_node(@head, node)
	# 	p parent_node.movie_rating
	# 	# child_nodes = collect_nodes(node,[])
	# 	# child_nodes.each_with_index do |child_node, i|
	# 	# 	p "#{child_node.movie_rating}  #{child_node.movie_title}"
	# 	# end
	# end

	private

	def maxmin(maxmin)
		if @head.nil?
			return {}
		else
			return @head.maxmin(maxmin)
		end
	end

	def get_nodes_by_depth(desired_depth)
		if @head.nil?
			return nil
		else
			return @head.get_nodes_by_depth(desired_depth)
		end
	end

	def get_health_list(desired_depth)
		health_list = []

		total_number_of_nodes = (@head.get_child_nodes.length + 1) / 1.0
		nodes_at_desired_depth = get_nodes_by_depth(desired_depth)

		nodes_at_desired_depth.each do |node|
			node_health_list = []

			number_of_child_nodes = (node.get_child_nodes.length + 1)
			node_percent = ((number_of_child_nodes / total_number_of_nodes) * 100).floor
			
			node_health_list.push(node.movie_rating)
			node_health_list.push(number_of_child_nodes)
			node_health_list.push(node_percent)

			health_list.push(node_health_list)
		end

		return health_list
	end

	##### Extensions

	# def get_parent_node(starting_node, child_node)
	# 	if starting_node.lower_link == child_node || starting_node.higher_link == child_node
	# 		return starting_node
	# 	else
	# 		if starting_node.lower_link.nil? == false
	# 			p "high"
	# 			get_parent_node(starting_node.lower_link, child_node)
	# 		end
	# 		if starting_node.higher_link.nil? == false
	# 			p "low"
	# 			get_parent_node(starting_node.higher_link, child_node)
	# 		end
	# 	end
	# end

end

# ## Extensions

# ### Understanding the Shape

# This extensions is made up of two methods:

# #### `leaves`

# A leaf is a node that has no left or right value. How many leaf nodes are on the tree?

# ```ruby
# tree.leaves
# # => 2
# ```

# #### `height`

# What is the height (aka the maximum depth) of the tree?


# ```ruby
# tree.height
# # => 3
# ```

# ### Deleting nodes

# Remove a specified piece score from the tree:

# ```ruby
# tree.delete(30)
# # => 30
# tree.delete(101)
# # => nil
# ```

# Note that any children of the deleted node should still be present in the tree.

# ## Evaluation Rubric

# The project will be assessed with the following rubric:



# ### 1. Test-Driven Development

# * 4: Application is broken into components which are well tested in both isolation and integration using appropriate data
# * 3: Application is well tested but does not balance isolation and integration tests, using only the data necessary to test the functionality
# * 2: Application makes some use of tests, but the coverage is insufficient
# * 1: Application does not demonstrate strong use of TDD
 
# ### 2. Functional Expectations

# * 4: Application fulfills all base expectations and two extensions
# * 3: Application fulfills all base expectations
# * 2: Application is missing one base expectation
# * 1: Application is missing more than one base expectation

# ### 3. Breaking Logic into Components

# * 4: Application always breaks concepts into classes and methods which encapsulate functionality.
# * 3: Application consistently breaks concepts into classes which encapsulate functionality. (SRP).
# * 2: Application makes use of some classes, but the divisions or encapsulation are unclear.
# * 1: Application makes use of just a few huge methods to control the bulk of the functionality.

# ### 4. Fundamental Ruby & Style

# * 4:  Application demonstrates excellent knowledge of Ruby syntax, style, refactoring, and extensively uses idiomatic code.
# * 3:  Application shows some effort toward organization but still has 6 or fewer long methods (> 8 lines)  needs some refactoring, and is mostly idiomatic.
# * 2:  Application runs but the code has many long methods (>8 lines), has poorly named variables, needs significant refactoring, and is somewhat idiomatic.
# * 1:  Application generates syntax error or crashes during execution