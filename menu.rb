require 'gosu'

	

class Menu

	@@state = 0
	@@continue = false

	
	def initialize 

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
		@display_four = "Quit?    Yes   No"

		@quit = false
		@yes_pos = 365
		@no_pos = 525
		@dot_pos_y = @pos_one
		@dot_pos_x = @pos_x 
	end

	 
	def update continue, enter, up, down, left, right, escape

		@@continue = continue
		@enter = enter
		@up = up
		@down = down
		@left = left
		@right = right
		@escape = escape
		@@state = 0

		
		#selector animation replace with custom animation 
		@total_time += 16.0
		@wiggle = Math.sin(@total_time * 0.01) * 5
		
		#changes menu for after game is already started		
		if @@continue == true
			@display_one = "Resume"
			@display_two = "Save"
		end

		#movement

		if @down == true 
			if @dot_pos_y == @pos_one
				@dot_pos_y = @pos_two
			elsif @dot_pos_y == @pos_two
				@dot_pos_y = @pos_three

			end
		elsif @up == true 							
			if @dot_pos_y == @pos_two
				@dot_pos_y = @pos_one
			elsif @dot_pos_y == @pos_three
				@dot_pos_y = @pos_two
									
			end
		elsif @left == true && @quit == true && @dot_pos_x == @no_pos # move left
			@dot_pos_x = @yes_pos
		elsif @right == true && @quit == true && @dot_pos_x == @yes_pos	# move right			
			@dot_pos_x = @no_pos	
		end

		#selection
	
		if @dot_pos_y == @pos_one && @enter == true && @@continue == false # New Game
			@@state = 3
		elsif @dot_pos_y == @pos_one && @enter == true && @@continue == true # Continue Game
			@@state = 1
		elsif @dot_pos_y == @pos_two && @enter == true && @@continue == false # Load previous save
			puts "load game" #replace with load game options
			print @@state
		elsif @dot_pos_y == @pos_two && @enter == true && @@continue == true # Save current game
			puts "saved game"
		elsif @dot_pos_y == @pos_three && @enter == true # Quit game
			@quit = true
			@pos_x = 150
			@pos_y = 250
			@dot_pos_x = @yes_pos
			@dot_pos_y = @pos_y + 30	
		elsif @quit == true && @dot_pos_x == @yes_pos && @enter == true # Closes game
			@@state = -1
		elsif @quit == true && @dot_pos_x == @no_pos && @enter == true # reset to origin state
			@pos_x = 110	
			@pos_y = @pos_one
			@quit = false
			@dot_pos_x = @pos_x
			@dot_pos_y = @pos_one				
		end
		
	end

	def return_state

		return @@state

	end

	def draw

		if @quit == false
			@font.draw("#{@display_one}", @pos_x + 10, @pos_one - 32, @depth)
			@font.draw("#{@display_two}", @pos_x + 10, @pos_two - 32, @depth)
			@font.draw("#{@display_three}", @pos_x + 10, @pos_three - 32, @depth)

			@dot.draw(@dot_pos_x, @dot_pos_y + @wiggle.to_i, @depth)
			@dot.draw(@dot_pos_x - 10, @dot_pos_y + @wiggle.to_i, @depth)
			@dot.draw(@dot_pos_x - 20, @dot_pos_y + @wiggle.to_i, @depth)

		elsif @quit == true
			@font.draw("#{@display_four}", @pos_x, @pos_y, @depth + 2)

			@dot.draw(@dot_pos_x, @dot_pos_y + @wiggle.to_i, @depth)
			@dot.draw(@dot_pos_x - 10, @dot_pos_y + @wiggle.to_i, @depth)
			@dot.draw(@dot_pos_x - 20, @dot_pos_y + @wiggle.to_i, @depth)
		end				

	end

end