require 'gosu'

	

class Menu

	$game_state = 0

	
	def initialize window

		@window = window

		@menu_state = 1

		@pos_one = 140
		@pos_two = 300
		@pos_three = 455
		
		@pos_x = 110
		@pos_y = @pos_one
		@depth = 6
		@total_time = 0
		@wait = false
		@counter = 0
		
		@dot = Gosu::Image.new("graphics/dot.bmp")
		@font = Gosu::Font.new(70)

		@display_one = "New Game"
		@display_two = "Load Game"
		@display_three = "Quit"
		@display_four = "nil"
	end

	 
	def update continue, enter, up, down, left, right, escape

		@continue = continue
		@enter = enter
		@up = up
		@down = down
		@left = left
		@right = right
		@escape = escape
		

		#selector animation replace with custom animation 
		@total_time += 16.0
		@wiggle = Math.sin(@total_time * 0.01) * 5

		#adds pause between selections
		if @wait == true
			@counter +=1
		end
		if @counter >= 10
			@wait = false
			@counter = 0	
		end
		
		#changes menu for after game is already started		
		if @continue == true
			@display_one = "Resume"
			@display_two = "Save"
		end

		#verticle movement

		if @down == true && @wait == false
			if @pos_y == @pos_one
				@pos_y = @pos_two
				@wait = true
			elsif @pos_y == @pos_two
				@pos_y = @pos_three
				@wait = true
			end
		elsif @up == true && @wait == false							
			if @pos_y == @pos_two
				@pos_y = @pos_one
				@wait = true
			elsif @pos_y == @pos_three
				@pos_y = @pos_two
				@wait = true								
			end
		end

		#selection
		if @wait == false
			if @pos_y == @pos_one && @enter == true && @continue == false
				$game_state = 1 # replace with new game creation menu
				@wait = true
			elsif @pos_y == @pos_one && @enter == true && @continue == true
				$game_state = 1
				@wait = true
			elsif @pos_y == @pos_two && @enter == true && @continue == false
				puts "load game" #replace with load game options
				@wait = true
			elsif @pos_y == @pos_two && @enter == true && @continue == true 
				puts "saved game"
				@wait = true
			elsif @pos_y == @pos_three && @enter == true
				$game_state = -1
			end
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