require 'gosu'

require_relative 'tile'

class MapGen

	
	def initialize 
		#so far just reference for me to get an idea of scale
		map_size = 4800
		tile_size = 16
		cell_size = 192


		#init arrays
		@map_row = Array.new(200)
		@map_column = Array.new(200)

	end

	def tile_gen

		val = rand(0..5)

	end


	def map_gen

		@test_row = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
		@test = Array.new(20)
		
		@test.each do |r|
			#r = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
			@test.push(@test_row)
			
		end

		puts @test
	
	end 



	def draw

	end 


end