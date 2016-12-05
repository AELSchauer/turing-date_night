require './lib/binary_search_tree'

class InsertionSort
	def insert_sorted(sorted, unsorted)
		unsorted_node = unsorted.shift
		i = determine_position(sorted, unsorted_node)
		sorted.insert(i, unsorted_node)
		return sorted, unsorted
	end
	def determine_position(sorted, unsorted_node)
		if sorted.length == 0
			return 0
		else
			# The hash's value is the movie rating. Compare values by grabbing the hash.
			unsorted_node_value = unsorted_node[unsorted_node.keys[0]]
			sorted.each_with_index do |sorted_node, i|
				sorted_node_value = sorted_node[sorted_node.keys[0]]
				if unsorted_node_value <= sorted_node_value	
					return i
				end
			end
			return -1
		end
	end
	def sort(unsorted)
		# The unsorted array is a series of individual hashes.
		sorted = []
		(unsorted.length).times do
			sorted, unsorted = insert_sorted(sorted, unsorted)
		end
		return sorted
	end
end