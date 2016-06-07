require 'gosu'

require_relative 'background'
require_relative 'player'
require_relative 'gui'

class Game

	def initialize(window)
		@window = window

		@backdrop = Background.new
		@gui = GraphicInterface.new
		@player = Player.new(800/2, 600/2, window)

	end

	def update(window)

		@player.update

		if @window.button_down?(Gosu::KbTab) 
			@gui.menu.draw(200,150,5)
		end

		
	end

	def draw

		@gui.draw

		@backdrop.draw

		@player.draw

	end	

end