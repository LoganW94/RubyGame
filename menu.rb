require 'gosu'

	

class Menu

	$game_state = 0

	
	def initialize window

		@window = window

		@pos_one = 140
		@pos_two = 300
		@pos_three = 455
		
		@pos_x = 110
		@pos_y = @pos_one
		@depth = 6
		@total_time = 0
		
		@dot = Gosu::Image.new("graphics/dot.bmp")
		@font = Gosu::Font.new(70)

		@display_one = "New Game"
		@display_two = "Load Game"
		@display_three = "Quit"
		@display_four = "nil"
	end

	 
	def update continue, enter, up, down, left, right, escape, state, delta

		@continue = continue
		@enter = enter
		@up = up
		@down = down
		@left = left
		@right = right
		@escape = escape
		@state = state
		@delta = delta
		

		#selector animation replace with custom animation 
		@total_time += 16.0
		@wiggle = Math.sin(@total_time * 0.01) * 5
		
		#changes menu for after game is already started		
		if @continue == true
			@display_one = "Resume"
			@display_two = "Save"
		end

		#verticle movement

		if @down == true 
			if @pos_y == @pos_one
				@pos_y = @pos_two
			elsif @pos_y == @pos_two
				@pos_y = @pos_three

			end
		elsif @up == true 							
			if @pos_y == @pos_two
				@pos_y = @pos_one
			elsif @pos_y == @pos_three
				@pos_y = @pos_two
									
			end
		end

		#selection
	
		if @pos_y == @pos_one && @enter == true && @continue == false
			return @delta = 1 # replace with new game creation menu
			
		elsif @pos_y == @pos_one && @enter == true && @continue == true
			return @state = 1
			
		elsif @pos_y == @pos_two && @enter == true && @continue == false
			puts "load game" #replace with load game options
		
		elsif @pos_y == @pos_two && @enter == true && @continue == true 
			puts "saved game"

		elsif @pos_y == @pos_three && @enter == true
			return @state = -1
		end

		
	end

	def draw

		@font.draw("#{@display_one}", @pos_x + 10, @pos_one - 32, @depth + 1)
		@font.draw("#{@display_two}", @pos_x + 10, @pos_two - 32, @depth + 1)
		@font.draw("#{@display_three}", @pos_x + 10, @pos_three - 32, @depth + 1)		
	


		@dot.draw(@pos_x, @pos_y+ @wiggle.to_i, @depth)
		@dot.draw(@pos_x - 10, @pos_y + @wiggle.to_i, @depth)
		@dot.draw(@pos_x - 20, @pos_y + @wiggle.to_i, @depth)

	end

end