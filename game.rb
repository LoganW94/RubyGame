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
		
		@player = Player.new
		@player.level = 1
		@player.exp = 0
		@player.hp = 20

		@objects = Objects.new

		@gui = GraphicInterface.new(@window, @player.level, @player.exp, @player.hp, @player.inventory, @backdrop.location)

	end

	def update

		@player.exp = @player.gain_exp(@player.exp)
		
		@player.level = @player.level_up(@player.exp, @player.level)
		

		@backdrop.update

		@gui.update
		
	end

	def draw


		@gui.draw

		@backdrop.draw

		@player.draw(@width/2, @height/2)

	end	

end