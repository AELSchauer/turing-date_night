require './lib/node'
require './lib/insertion_sort'
require 'pry'

class BinarySearchTree

	attr_reader :node

	def insert(movie_rating, movie_title)
		if @node.nil?	# Is there some way to change this local variable by calling it something else?
			@node = create_node(movie_rating, movie_title)
			return 0
		else
			return get_node_insert(@node, movie_rating, movie_title, 1)
		end
	end

	def include?(movie_rating)
		get_node_include?(@node, movie_rating)
	end

	def max
		get_maxmin_node(@node, "max")
	end

	def min
		get_maxmin_node(@node, "min")
	end

	def depth_of(movie_rating)
		find_rating(@node, movie_rating, 0)
	end

	def sort
		all_nodes = collect_nodes(@node,[])
		sorter = InsertionSort.new
		return sorter.sort(all_nodes)
	end

	def load(file_name)
		movies = open_file(file_name)
		if movies.nil?
			return nil
		else
			upload_count = 0
			movies.each do |movie_rating, movie_title|
				if insert(movie_rating, movie_title).nil? == false
					upload_count = upload_count + 1
				end
			end
			return upload_count
		end
	end

	def health(level)
		if @node.nil?
			return nil
		else
			total_number_of_nodes = collect_nodes(@node,[])
			p total_number_of_nodes
		end

	#### Extensions
	# def height(movie_rating)
	# 	if @node.nil?
	# 		return nil
	# 	else
	# 		get_next_1(@node)
	# 	end
	# end

	private

	def create_node(movie_rating, movie_title)
		return Node.new(movie_rating, movie_title)
	end

	def get_node_insert(sub_node, movie_rating, movie_title, depth)
		if movie_rating < sub_node.movie_rating
			if sub_node.lower_link.nil?
				sub_node.lower_link = create_node(movie_rating, movie_title)
				return depth
			else
				get_node_insert(sub_node.lower_link, movie_rating, movie_title, depth+1)
			end
		elsif sub_node.movie_rating < movie_rating
			if sub_node.higher_link.nil?
				sub_node.higher_link = create_node(movie_rating, movie_title)
				return depth
			else
				get_node_insert(sub_node.higher_link, movie_rating, movie_title, depth+1)
			end
		end
	end

	def get_node_include?(sub_node, movie_rating)
		if sub_node.nil?
			return false
		elsif sub_node.movie_rating == movie_rating
			return true
		elsif movie_rating < sub_node.movie_rating
			get_node_include?(sub_node.lower_link, movie_rating)
		elsif sub_node.movie_rating < movie_rating
			get_node_include?(sub_node.higher_link, movie_rating)
		end
	end

	def get_maxmin_node(sub_node, maxmin)
		if @node.nil?
			return {}
		elsif maxmin == "max"
			if sub_node.higher_link.nil?
				return { sub_node.movie_title => sub_node.movie_rating }
			else
				get_maxmin_node(sub_node.higher_link, maxmin)
			end
		elsif maxmin == "min"
			if sub_node.lower_link.nil?
				return { sub_node.movie_title => sub_node.movie_rating }
			else
				get_maxmin_node(sub_node.lower_link, maxmin)
			end
		end
	end

	def find_rating(sub_node, movie_rating, depth)
		if sub_node.nil?
			return nil
		elsif sub_node.movie_rating == movie_rating
			return depth
		else
			ratings = []
			ratings.push(find_rating(sub_node.lower_link, movie_rating, depth+1))
			ratings.push(find_rating(sub_node.higher_link, movie_rating, depth+1))
			ratings = ratings.delete_if { |rating| rating.nil? }
			if ratings.empty?
				return nil
			else
				return ratings[0]
			end
		end
	end

	def collect_nodes(sub_node,all_nodes)
		if sub_node.nil?
			return all_nodes
		else
			node_data = {sub_node.movie_title => sub_node.movie_rating}
			all_nodes.push(node_data)
			collect_nodes(sub_node.lower_link, all_nodes)
			collect_nodes(sub_node.higher_link, all_nodes)
		end
		
	end

	def open_file(file_name)
		begin
		   File.open(file_name)
		rescue
		   return nil
		else
			movies = []
			File.open(file_name).each do |line|
				line.gsub!("\n","")
				line.sub!(", ",";")
				movie_rating, movie_title = line.split(";")
				movies.push([movie_rating.to_i, movie_title])
			end
			return movies
		end
	end

	##### Extensions
	# def get_next_1(sub_node)
	# 	return "HI"
	# end

end

# ### `health`

# Report on the health of the tree by summarizing the number of child sub_nodes (sub_nodes beneath each sub_node) at a given depth. For health, we're worried about 3 values:

# * Score of the sub_node
# * Total number of child sub_nodes including the current sub_node
# * Percentage of all the sub_nodes that are this sub_node or it's children

# ```ruby
# tree.insert(98, "Animals United")
# tree.insert(58, "Armageddon")
# tree.insert(36, "Bill & Ted's Bogus Journey")
# tree.insert(93, "Bill & Ted's Excellent Adventure")
# tree.insert(86, "Charlie's Angels")
# tree.insert(38, "Charlie's Country")
# tree.insert(69, "Collateral Damage")
# tree.health(0)
# => [[98, 7, 100]]
# tree.health(1)
# => [[58, 6, 85]]
# tree.health(2)
# => [[36, 2, 28], [93, 3, 42]]
# ```

# Where the return value is an `Array` with one nested array per sub_node at that level. The nested array is:

# ```
# [score in the sub_node, 1 + number of child sub_nodes, floored percentage of (1+children) over the total number of sub_nodes]
# ```

# When the percentages of two sub_nodes at the same level are dramatically different, like `28` and `42` above, then we know that this tree is starting to become unbalanced.

# ## Extensions

# ### Understanding the Shape

# This extensions is made up of two methods:

# #### `leaves`

# A leaf is a sub_node that has no left or right value. How many leaf sub_nodes are on the tree?

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

# ### Deleting sub_nodes

# Remove a specified piece score from the tree:

# ```ruby
# tree.delete(30)
# # => 30
# tree.delete(101)
# # => nil
# ```

# Note that any children of the deleted sub_node should still be present in the tree.

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