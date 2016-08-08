require 'gosu'

require_relative 'tile'

class MapGen

	attr_accessor :map

	
	def initialize 

		@map = Array.new(100) { Array.new(100) }
		

		@tile = Gosu::Image.new("graphics/tile.png", false)
		@tile_dirt = Gosu::Image.new("graphics/tile_dirt.png", false)
		@tile_water = Gosu::Image.new("graphics/tile_water.png", false)
		@tile_rock = Gosu::Image.new("graphics/tile_rock.png", false)
		@tile_err = Gosu::Image.new("graphics/tile_err.png", false)

	end

	def map_gen		

		@map.each do |i|
			i.length.times do |x|
				i[x] = Tile.new				
			end			
		end	
		

	return @map
	end 



	def draw map, pos_x, pos_y, pos_x_init



		map.each do |i|
	      	i.length.times do |x|

	      		if i[x].val == 0
	      			@tile.draw(pos_x, pos_y, 0)
	      		elsif i[x].val == 1
	      			@tile_dirt.draw(pos_x, pos_y, 0)
	      		elsif i[x].val == 2
	      			@tile_water.draw(pos_x, pos_y, 0)
	      		elsif i[x].val == 3
	      			@tile_rock.draw(pos_x, pos_y, 0)
	      		else 
	      			@tile_err.draw(pos_x, pos_y, 0)
	      		end						
	      		pos_x += 16
	      	end 
	      pos_x = pos_x_init
	      pos_y += 16
	      
	    end
	    
	end

	
end