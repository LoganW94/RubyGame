require 'gosu'

	

class LoadMenu

	$game_state = 3

	def initialize (window)

		@window = window
		@load_pos = 140
		@back_pos = 300
		
		@pos_x = 110
		@pos_y = 140.0
		@depth = 6
		@total_time = 0
		@new_press_up, @new_press_down, @new_press_return = false
		
		@dot = Gosu::Image.new("graphics/dot.bmp")
		@font = Gosu::Font.new(70)
	end

	 
	def update(continue)

		@continue = continue

		@total_time += 16.0
		@wiggle = Math.sin(@total_time * 0.01) * 5

		if @window.button_down?(Gosu::KbReturn) && @pos_y == @load_pos && @new_press_return
        	puts "load"
        elsif @window.button_down?(Gosu::KbReturn) && @pos_y == @back_pos && @new_press_return
        	return  $game_state = 0, $continue = false	
   		end

   		if @new_press_up && @window.button_down?(Gosu::KbDown)
		
			if @pos_y == @load_pos
				@pos_y = @back_pos								
			end
		end

		if  @new_press_down && @window.button_down?(Gosu::KbUp)
			 
			if @pos_y == @back_pos
			   	@pos_y = @load_pos		
			end
		end

		@new_press_up = !@window.button_down?(Gosu::KbDown)
        @new_press_down = !@window.button_down?(Gosu::KbUp)
        @new_press_return = !@window.button_down?(Gosu::KbReturn)
	end

	def draw

		@font.draw("Load", @pos_x+10, @load_pos-32, @depth + 1)	
		@font.draw("Back", @pos_x+10, @back_pos-32, @depth + 1)


		@dot.draw(@pos_x, @pos_y+ @wiggle.to_i, @depth)
		@dot.draw(@pos_x - 10, @pos_y + @wiggle.to_i, @depth)
		@dot.draw(@pos_x - 20, @pos_y + @wiggle.to_i, @depth)

	end

end