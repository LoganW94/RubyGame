require 'gosu'

require_relative 'tile'

class MapGen

	
	def initialize 
		#so far just reference for me to get an idea of scale
		map_size = 4800
		tile_size = 16
		cell_size = 192


		#init arrays
#		@map_row = Array.new(200)
#		@map_column = Array.new(200)

	end

	def temp_tile_gen

		val = rand(0..5)

	end


	def map_gen

		@map = Array.new(100) { Array.new(100) }
		


		@map.each do |i|

			i.each do |x|
				x = Tile.new
				print "#{x.val} "
			end	
			print "\n"
		end

		return @map		
	
	
	end 



	def draw

	end 


end