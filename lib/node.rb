require './lib/binary_search_tree'

class Node
	attr_accessor :movie_rating, :movie_title, :lower_link, :higher_link
	def initialize(movie_rating, movie_title)
		@movie_rating = movie_rating
		@movie_title = movie_title
	end

  def insert(new_movie_rating, new_movie_title, *depth)
    if depth.empty?
      depth = [1]
    end
    if new_movie_rating < @movie_rating
      insert_lower(new_movie_rating, new_movie_title, depth)
    elsif @movie_rating < new_movie_rating
      insert_higher(new_movie_rating, new_movie_title, depth)
    end
  end

  def insert_lower(new_movie_rating, new_movie_title, depth)
    if @lower_link.nil?
      @lower_link = Node.new(new_movie_rating, new_movie_title)
      return depth[0]
    else
      @lower_link.insert(new_movie_rating, new_movie_title, depth[0]+1)
    end
  end

  def insert_higher(new_movie_rating, new_movie_title, depth)
    if @higher_link.nil?
      @higher_link = Node.new(new_movie_rating, new_movie_title)
      return depth[0]
    else
      @higher_link.insert(new_movie_rating, new_movie_title, depth[0]+1)
    end
  end

end