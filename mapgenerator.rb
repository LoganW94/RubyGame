require 'gosu'

require_relative 'tile'

class MapGen

	
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

			i.each do |x|
				x = Tile.new
				print "#{x.val} "
			end	
			print "\n"
		end	
	
	end 



	def draw map, pos_x, pos_y, pos_x_init
		tick = 0

		@map.each do |i|
	      	i.each do |x|

	      		if x == 0
	      			@tile.draw(pos_x, pos_y, 0)
	      		elsif x == 1
	      			@tile_dirt.draw(pos_x, pos_y, 0)
	      		elsif x == 2
	      			@tile_water.draw(pos_x, pos_y, 0)
	      		elsif x == 3
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