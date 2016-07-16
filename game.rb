require 'gosu'

require_relative 'background'
require_relative 'player'
require_relative 'gui'
#require_relative 'mapgenerator'
#require_relative 'objects'



class Game


	def initialize window, width, height
		@window = window
		@width = width
		@height = height

		@backdrop = Background.new(-300, -1000, @window)
		@gui = GraphicInterface.new	

		@player = Player.new		

	end

	def update up, down, left, right

      	@up = up
      	@down = down
     	@left = left
      	@right = right
		
		@player.update
						
		@backdrop.update(
				@up,
				@down,
				@left,
				@right)
		
		
		if @window.button_down?(Gosu::KbEscape)
   			return  $game_state = 0, $continue = true
   		end
	end

	def draw

		@gui.draw(@window, @player.level, @player.exp, @player.hp, @player.inventory, @backdrop.location)

		@backdrop.draw

		@player.draw(@width/2, @height/2)

	end	

end