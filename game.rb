require 'gosu'

require_relative 'background'
require_relative 'player'
require_relative 'gui'
require_relative 'maths'
require_relative 'inputhandler'
#require_relative 'objects'



class Game


	def initialize window, width, height
		@window = window
		@width = width
		@height = height
		@pos_x = 50
		@pos_y = 50	

		@backdrop = Background.new(@pos_x, @pos_y, @window)
		@gui = GraphicInterface.new
		@math = Maths.new
		@player = Player.new	
	

	end

	def update enter, up, down, left, right, escape, tab

		@enter = enter
		@up = up
		@down = down
		@left = left
		@right = right
		@escape = escape
		@tab = tab
		
		puts @up
		if $game_state != 2 
			@draw_menu = false
		end

		@player.update					
		
		@pos_x = @math.move_x(@left, @right, @pos_x)
		
		@pos_y = @math.move_y(@up, @down, @pos_y)
		
		@backdrop.update

		
		if @escape == true
			return  $game_state = 0, $continue = true
		end

		if @tab == true
   			return $game_state = 2 
		end	
   				

	end

	def draw

		@gui.draw(@window, @player.level, @player.exp, @player.hp, @player.inventory, @backdrop.location)
		

		@backdrop.draw(@pos_x, @pos_y)

		@player.draw(@width/2, @height/2)

	end	

end