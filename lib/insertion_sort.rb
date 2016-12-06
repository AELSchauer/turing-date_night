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
			sorted.each_with_index do |sorted_node, i|
				if unsorted_node.movie_rating <= sorted_node.movie_rating	
					return i
				end
			end
			return -1
		end
	end

	def sort(unsorted)
		# The unsorted variable is an array of Node objects.
		sorted = []
		(unsorted.length).times do
			sorted, unsorted = insert_sorted(sorted, unsorted)
		end
		return sorted
	end

end