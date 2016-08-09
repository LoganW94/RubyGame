require 'gosu'

require_relative 'background'
require_relative 'player'
require_relative 'gui'
require_relative 'maths'
#require_relative 'mapgenerator'
#require_relative 'objects'



class Game


	def initialize window, width, height
		@window = window
		@width = width
		@height = height
		@pos_x = 50
		@pos_y = 50	

		@backdrop = Background.new( @pos_x, @pos_y, @window)
		@gui = GraphicInterface.new
		@math = Maths.new	

		@player = Player.new	

		@new_press_escape, @new_press_tab  = false	

	end

	def update up, down, left, right

		if $game_state != 2 
			@draw_menu = false
		end

		@player.update					
		
		@pos_x = @math.move_x(left, right, @pos_x)
		
		@pos_y = @math.move_y(up, down, @pos_y)
		
		@backdrop.update
		
		if @window.button_down?(Gosu::KbEscape)
   			return  $game_state = 0, $continue = true
   		end

   		if @window.button_down?(Gosu::KbTab) 
			@draw_menu = true
			return $game_state = 2
		end

		@new_press_escape = !@window.button_down?(Gosu::KbEscape)
		@new_press_tab = !@window.button_down?(Gosu::KbTab)
	end

	def draw

		@gui.draw(@window, @player.level, @player.exp, @player.hp, @player.inventory, @backdrop.location)
		

		@backdrop.draw(@pos_x, @pos_y)

		@player.draw(@width/2, @height/2)

	end	

end