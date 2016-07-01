require 'gosu'

class StartMenu

	$game_state = 0


	def initialize (window)

		@window = window
		@new_game_pos = 140
		@load_pos = 300
		@quit_pos = 455
		@pos_x = 110
		@pos_y = 140
		@depth = 6
		@total_time = 0
		@new_press_up, @new_press_down, @new_press_return = false
		
		@dot = Gosu::Image.new("graphics/dot.bmp")
		@font = Gosu::Font.new(70)
	end

	 
	def update(continue)

		@continue = continue
		#add animations for option select	

		@total_time += 16.0
		@wiggle = Math.sin(@total_time * 0.01) * 5


		if @new_press_up && @window.button_down?(Gosu::KbDown)
		
			if @pos_y == @new_game_pos
				@pos_y = @load_pos		
			elsif @pos_y  == @load_pos
				@pos_y = @quit_pos				
			end

		end

		if  @new_press_down && @window.button_down?(Gosu::KbUp)
			 
			if @pos_y == @quit_pos
			   	@pos_y = @load_pos
			elsif @pos_y  == @load_pos
				@pos_y = @new_game_pos
			end
		end
		

   		if @window.button_down?(Gosu::KbReturn) && @pos_y == @new_game_pos && @new_press_return
        	return  $game_state = 2, $continue = true
        elsif @window.button_down?(Gosu::KbReturn) && @pos_y == @quit_pos && @new_press_return
        	return  $game_state = -1 
        elsif @window.button_down?(Gosu::KbReturn) && @pos_y == @load_pos && @new_press_return && @continue == false
        	return  $game_state = 3	
        elsif @window.button_down?(Gosu::KbReturn) && @pos_y == @load_pos && @new_press_return && @continue == true
        	puts "Saves Game"		
   		end
   		

        @new_press_up = !@window.button_down?(Gosu::KbDown)
        @new_press_down = !@window.button_down?(Gosu::KbUp)
        @new_press_return = !@window.button_down?(Gosu::KbReturn)

        if @continue == false
        	@disp = "New Game"
        	@disp_ls = "Load"
        elsif @continue == true
        	@disp = "Resume"
        	@disp_ls = "Save"
        end		
	end 


	def draw

		@font.draw("#{@disp_ls}", @pos_x+10, @load_pos-32, @depth + 1)
		@font.draw("Quit", @pos_x+10, @quit_pos-32, @depth + 1)
		@font.draw("#{@disp}", @pos_x+10, @new_game_pos-32, @depth + 1)		

		@dot.draw(@pos_x, @pos_y + @wiggle, @depth)
		@dot.draw(@pos_x - 10, @pos_y+ @wiggle, @depth)
		@dot.draw(@pos_x - 20, @pos_y+ @wiggle, @depth)


	end

end