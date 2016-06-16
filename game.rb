require 'gosu'

require_relative 'background'
require_relative 'player'
require_relative 'gui'
require_relative 'objects'



class Game


	def initialize(window, width, height)
		@window = window
		@width = width
		@height = height
		

		@backdrop = Background.new(0, 0, @window)
		
		@player = Player.new(@width/2, @height/2)

		@objects = Objects.new

		@gui = GraphicInterface.new(window, @player.level, @player.exp, @player.health, @player.inventory, @backdrop.location)

	end

	def update(window)

		@player.update
		
		@backdrop.update
		
	end

	def draw(window)


		@gui.draw

		@backdrop.draw

		@player.draw

	end	

end