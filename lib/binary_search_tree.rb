require 'pry'

class BinarySearchTree

	#attr_accessor :node
	attr_reader :node

	def insert(movie_rating, movie_title)

		if @node.nil?
			@node = create_node(movie_rating, movie_title)
			return 0 #This is what it's supposed to return
			# return @node.object_id  #Temporarily return this while working
		# elsif movie_rating < @node.movie_rating
		# 	#less_link
		# 	node.less_link = create_node(movie_rating, movie_title)
		# elsif @node.movie_rating < movie_rating
		# 	#more_link
		# 	node.more_link = create_node(movie_rating, movie_title)
		else	
			sub_node, link_type, depth = get_node_1(@node, movie_rating	)
			if link_type == "less_link"
				sub_node.less_link = create_node(movie_rating, movie_title)
			elsif link_type == "more_link"
				sub_node.more_link = create_node(movie_rating, movie_title)
			end
			return depth
		end
	end

	# private

	def create_node(movie_rating, movie_title)
		return Node.new(movie_rating, movie_title)

	end

	def get_node_1(sub_node, movie_rating)
		if movie_rating < sub_node.movie_rating
			#less_link
			if sub_node.less_link.nil?
				p "less than #{sub_node.movie_rating} is empty; inserting #{movie_rating}"
				return sub_node, "less_link", 1
			else
				p "less than #{sub_node.movie_rating} is full; going to the next node; 1 --> 2"
				sub_node = sub_node.less_link
				return get_node_2(sub_node, movie_rating)
			end
		elsif sub_node.movie_rating < movie_rating
			#more_link
			if sub_node.more_link.nil?
				p "more than #{sub_node.movie_rating} is empty; inserting #{movie_rating}"
				return sub_node, "more_link", 1
			else
				p "more than #{sub_node.movie_rating} is full; going to the next node; 1 --> 2"
				sub_node = sub_node.less_link
				return get_node_2(sub_node, movie_rating)
			end
		end
	end

	def get_node_2(sub_node, movie_rating)
		if movie_rating < sub_node.movie_rating
			#less_link
			if sub_node.less_link.nil?
				p "less than #{sub_node.movie_rating} is empty; inserting #{movie_rating}"
				return sub_node, "less_link", 2
			else
				p "less than #{sub_node.movie_rating} is full; need to create 2 --> 3"
				# sub_node = sub_node.less_link
				# get_node_2(sub_node, movie_rating)
			end
		elsif sub_node.movie_rating < movie_rating
			#more_link
			if sub_node.more_link.nil?
				p "more than #{sub_node.movie_rating} is empty; inserting #{movie_rating}"
				return sub_node, "more_link", 2
			else
				p "more than #{sub_node.movie_rating} is full; need to create 2 --> 3"
				# sub_node = sub_node.less_link
				# get_node_2(sub_node, movie_rating)
			end
		end
	end

end


class Node
	## MOVE THIS OVER TO ITS OWN FILE!!!
	attr_accessor :movie_rating, :movie_title, :less_link, :more_link

	def initialize(movie_rating, movie_title)
		@movie_rating = movie_rating
		@movie_title = movie_title
	end

end

tree = BinarySearchTree.new

depth = tree.insert(61,"Bill and Ted's Excellent Adventure")

puts "#{depth}  outside #{tree.node.movie_rating} #{tree.node.object_id}"

depth = tree.insert(16, "Johnny English")

puts "#{depth}L outside #{tree.node.less_link.movie_rating} #{tree.node.less_link.object_id}"

depth = tree.insert(92, "Sharknado 3")

puts "#{depth}R outside #{tree.node.more_link.movie_rating} #{tree.node.more_link.object_id}"

depth = tree.insert(50, "Hannibal Buress: Animal Furnace")

puts "#{depth}L outside #{tree.node.less_link.more_link.movie_rating} #{tree.node.less_link.more_link.object_id}"

# ### `insert`

# The `insert` method adds a new node with the passed-in data. Each node is comprised of a score and a movie title. It returns the depth of the new node in the tree.

# ```ruby
# tree.insert(61, "Bill & Ted's Excellent Adventure")
# # => 0
# tree.insert(16, "Johnny English")
# # => 1
# tree.insert(92, "Sharknado 3")
# # => 1
# tree.insert(50, "Hannibal Buress: Animal Furnace")
# # => 2
# ```



# For all the later methods defined here, assume that we've run these four inserts.

# ### `include?`

# Verify/reject the presence of a score in the tree:

# ```ruby
# tree.include?(16)
# # => true
# tree.include?(72)
# # => false
# ```

# ### `depth_of`

# Reports the depth of the tree where a score appears. Return nil if the score does not exist:

# ```ruby
# tree.depth_of(92)
# # => 1
# tree.depth_of(50)
# # => 2
# ```

# ### `max`

# Which movie has the highest score in the list? What is it's score?

# ```ruby
# tree.max
# # => {"Sharknado 3"=>92}
# ```

# ### `min`

# Which movie has the lowest score in the list? What is it's score?

# ```ruby
# tree.min
# # => {"Johnny English"=>16}
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

# Report on the health of the tree by summarizing the number of child nodes (nodes beneath each node) at a given depth. For health, we're worried about 3 values:

# * Score of the node
# * Total number of child nodes including the current node
# * Percentage of all the nodes that are this node or it's children

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

# Where the return value is an `Array` with one nested array per node at that level. The nested array is:

# ```
# [score in the node, 1 + number of child nodes, floored percentage of (1+children) over the total number of nodes]
# ```

# When the percentages of two nodes at the same level are dramatically different, like `28` and `42` above, then we know that this tree is starting to become unbalanced.

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

# ### Deleting Nodes

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