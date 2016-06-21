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

		
		@start_menu = Gosu::Image.new("graphics/start_menu.bmp")
		@dot = Gosu::Image.new("graphics/dot.bmp")
		@font = Gosu::Font.new(20)
	end


	def update

		#add animations for option select
		


		if @window.button_down?(Gosu::KbDown)
			if @pos_y == @new_game_pos
				@pos_y = @load_pos
				return @pos_y
			elsif @pos_y  == @load_pos
				@pos_y = @quit_pos
				return @pos_y
			end

		end

		if @window.button_down?(Gosu::KbUp)
			if @pos_y == @quit_pos
			   	@pos_y = @load_pos
			   	return @pos_y
			elsif @pos_y  == @load_pos
				@pos_y = @new_game_pos
				return @pos_y
			end
		end

   		if @window.button_down?(Gosu::KbReturn) && @pos_y == @new_game_pos
        	return  $game_state = 1
   		end
   		
   		if @window.button_down?(Gosu::KbReturn) && @pos_y == @quit_pos
        	return  $game_state = -1
        end


	end 


	def draw

		#@font.draw("Load", @pos_x, @load_pos,@depth + 1)
		#@font.draw("Quit", @pos_x, @quit_pos,@depth + 1)
		#@font.draw("New Game", @pos_x, @new_game_pos,@depth + 1)

		@dot.draw(@pos_x, @pos_y, @depth)
		@dot.draw(@pos_x - 10, @pos_y, @depth)
		@dot.draw(@pos_x - 20, @pos_y, @depth)

		@start_menu.draw(0,0,5)


	end

end