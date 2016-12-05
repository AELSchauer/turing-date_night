require './lib/node'
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


	#### Extensions
	# def height(movie_rating)
	# 	if @node.nil?
	# 		return nil
	# 	else
	# 		get_next_1(@node)
	# 	end
	# end

	# private

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

	##### Extensions
	# def get_next_1(sub_node)
	# 	return "HI"
	# end

end



# ### `depth_of`

# Reports the depth of the tree where a score appears. Return nil if the score does not exist:

# ```ruby
# tree.depth_of(92)
# # => 1
# tree.depth_of(50)
# # => 2
# ```

# ### `sort`

# Return an array of all the movies and scores in sorted ascending order. Return them as an array of hashes.
# *Note*: you're not using Ruby's `Array#sort`. You're traversing the tree.

# ```ruby
# tree.sort
# # => [{"Johnny English"=>16},
# #   {"Hannibal Buress: Animal Furnace"=>50},
# #   {"Bill & Ted's Excellent Adventure"=>61},
# #  {"Sharknado 3"=>92}]
# ```

# ### `load`

# Assuming we have a file named `movies.txt` with one score/movie pair per line:

# ```
# # movies.txt sample format:
# 34, Hannibal Buress: Comedy Camisado
# 63, Meet My Valentine
# 22, Experimenter
# 84, French Dirty
# 41, Love
# 10, I Love You Phillip Morris
# ```

# ```ruby
# tree.load('movies.txt')
# # => 26
# ```

# Where the return value is the number of movies inserted into the tree. If a score is already present in the tree when `load` is called, ignore it.

# See an example file [here](https://gist.github.com/neight-allen/dbc9e3ad0f79bff24888)

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