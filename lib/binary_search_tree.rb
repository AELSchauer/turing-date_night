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
		end
	end

	def include?(movie_rating)
		get_node_include?(@head, movie_rating)
	end

	def max
		get_maxmin_node(@head, "max")
	end

	def min
		get_maxmin_node(@head, "min")
	end

	def depth_of(movie_rating)
		find_rating(@head, movie_rating, 0)
	end

	def sort
		all_nodes = collect_nodes(@head,[])
		sorter = InsertionSort.new
		sorted_nodes = sorter.sort(all_nodes)
		return sorted_nodes.map { |sorted_node| {sorted_node.movie_title => sorted_node.movie_rating} }
	end

	def load(file_name)
		loader = Load.new
		movies = loader.open_file(file_name)
		if movies.nil?
			return nil
		else
			upload_count = 0
			movies.each do |movie_rating, movie_title|
				depth = insert(movie_rating, movie_title)
				if not depth.nil?
					upload_count = upload_count + 1
				end
			end
			return upload_count
		end
	end

	def health(level)
		if @head.nil?
			return nil
		else
			total_number_of_nodes = collect_nodes(@head,[]).length / 1.0
			level_nodes = collect_nodes_at_depth(@head, [], 0, level)
			(level_nodes.length).times do |i|
				sub_level_node, level_nodes[i] = level_nodes[i], [level_nodes[i].movie_rating]
				child_nodes = collect_nodes(sub_level_node, [])
				level_nodes[i].push(child_nodes.length)
				level_nodes[i].push(((child_nodes.length / total_number_of_nodes) * 100).floor)
			end
			return level_nodes
		end
	end

	#### Extensions


	private

	def get_node_include?(node, movie_rating)
		if node.nil?
			return false
		elsif node.movie_rating == movie_rating
			return true
		elsif movie_rating < node.movie_rating
			get_node_include?(node.lower_link, movie_rating)
		elsif node.movie_rating < movie_rating
			get_node_include?(node.higher_link, movie_rating)
		end
	end

	def get_maxmin_node(node, maxmin)
		if @head.nil?
			return {}
		elsif maxmin == "max"
			if node.higher_link.nil?
				return { node.movie_title => node.movie_rating }
			else
				get_maxmin_node(node.higher_link, maxmin)
			end
		elsif maxmin == "min"
			if node.lower_link.nil?
				return { node.movie_title => node.movie_rating }
			else
				get_maxmin_node(node.lower_link, maxmin)
			end
		end
	end

	def find_rating(node, movie_rating, depth)
		if node.nil?
			return nil
		elsif node.movie_rating == movie_rating
			return depth
		else
			ratings = []
			ratings.push(find_rating(node.lower_link, movie_rating, depth+1))
			ratings.push(find_rating(node.higher_link, movie_rating, depth+1))
			ratings = ratings.delete_if { |rating| rating.nil? }
			if ratings.empty?
				return nil
			else
				return ratings[0]
			end
		end
	end

	def collect_nodes(node, all_nodes)
		if node.nil?
			return all_nodes
		else
			all_nodes.push(node)
			collect_nodes(node.lower_link, all_nodes)
			collect_nodes(node.higher_link, all_nodes)
		end
	end

	def collect_nodes_at_depth(node, all_nodes, current_depth, desired_depth)
		if node.nil?
			return all_nodes
		elsif current_depth == desired_depth
			all_nodes.push(node)
			return all_nodes
		else
			collect_nodes_at_depth(node.lower_link, all_nodes, current_depth+1, desired_depth)
			collect_nodes_at_depth(node.higher_link, all_nodes, current_depth+1, desired_depth)
		end
	end

	##### Extensions


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