require 'gosu'

require_relative 'background'
require_relative 'player'
require_relative 'gui'

class Game

	def initialize(window)
		@window = window

		@backdrop = Background.new
		@gui = GraphicInterface.new(window)
		@player = Player.new(800/2, 600/2, window)

	end

	def update(window)

		@player.update
		
	end

	def draw(window)

		@gui.draw

		@backdrop.draw

		@player.draw

	end	

end