require 'gosu'

require_relative 'tile'

class MapGen

	
	def initialize 
		#so far just reference for me to get an idea of scale
		map_size = 4800
		tile_size = 16
		cell_size = 192


		#init arrays
		@cell_column  = Array.new(10, "t")
		@cell_row = Array.new(10)
		@map_row = Array.new(5)
		@map_column = Array.new(5)

	end

	def tile_gen

		val = rand(0..5)

	end


	def map_gen

		@test = Array.new
		@test_array = Array.new
		
		@test_array.push(@test.push(tile_gen),
						@test.push(tile_gen),
						@test.push(tile_gen),
						@test.push(tile_gen),
						@test.push(tile_gen)
						)

		print @test_array



=begin
		@map_column.each do |c|
			@map_row.each do |r|
				@cell_column.each do |c|
					@cell_row.each do |tile|
						tile = Tile.new
						@cell_row.push(tile)
					end
					@ell_column.push(cell_row)
				end	
				@map_row.push(cell_column)
			end
			@map_column.push(@map_row)
		end

		@map_column.each do |c|
			@map_row.each do |r|
				@cell_column.each do |c|
					@cell_row.each do |tile|
					puts tile
					end
				end	
			end
		end

=end		
	end 



	def draw

	end 


end