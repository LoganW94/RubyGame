require 'gosu'

class StartMenu

	$game_state = 0


	def initialize (window)

		@window = window


		@depth = 6
		@pos_x = 110
		@pos_y = 140

		#@start_menu = Gosu::Image.new("graphics/start_menu.bmp")
		@start_menu = Gosu::Image.new("graphics/start_menu.bmp")
		@dot = Gosu::Image.new("graphics/dot.bmp")

	end


	def update

		#add animations for option select

		if @window.button_down?(Gosu::KbDown)
        	@pos_y += 80  
   		end

   		if @window.button_down?(Gosu::KbUp)
        	@pos_y -= 80  
   		end

   		if @window.button_down?(Gosu::KbReturn)
        	return  $game_state += 1
   		end

	end 


	def draw

		@dot.draw(@pos_x, @pos_y, @depth)
		@dot.draw(@pos_x - 10, @pos_y, @depth)
		@dot.draw(@pos_x - 20, @pos_y, @depth)

		@start_menu.draw(0,0,5)


	end

end