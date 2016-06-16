require 'gosu'

require_relative 'background'
require_relative 'player'
require_relative 'gui'

class Game

	@location_id = 1

	def initialize(window, width, height)
		@window = window
		@width = width
		@height = height
		@player_level = 1
		@player_exp = 0

		@backdrop = Background.new
		@gui = GraphicInterface.new(window, @player_level, @player_exp)
		@player = Player.new(@width/2, @height/2, @window, @player_level, @player_exp)

	end

	def update(window)

		@player.update(@player_exp, @player_level)
		
	end

	def draw(window)


		@gui.draw(@location_id)

		@backdrop.draw

		@player.draw

	end	

end