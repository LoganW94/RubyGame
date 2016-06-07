require 'gosu'

require_relative 'background'
require_relative 'player'
require_relative 'gui'

class Game

	@@location_id = 1

	def initialize(window, width, height)
		@window = window
		@width = width
		@height = height

		@backdrop = Background.new
		@gui = GraphicInterface.new(window)
		@player = Player.new(width/2, height/2, window)

	end

	def update(window)

		@player.update
		
	end

	def draw(window)


		@gui.draw(@@location_id)

		@backdrop.draw

		@player.draw

	end	

end