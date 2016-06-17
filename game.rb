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
		

		@backdrop = Background.new(-300, -1000, @window)
		
		@player = Player.new
		@player.level = 1
		@player.exp = 0
		@player.hp = 20

		#@objects = Objects.new

		@gui = GraphicInterface.new

	end

	def update

		@player.exp = @player.gain_exp(@player.exp)
		reqXp = 100
		if @player.exp > reqXp
			@player.level_up(@player.level)
			@player.exp = 0
			reqXp += 50
			return reqXp
		end
		
		
		@backdrop.update

		@gui.update
		
	end

	def draw


		@gui.draw(@window, @player.level, @player.exp, @player.hp, @player.inventory, @backdrop.location)

		@backdrop.draw

		@player.draw(@width/2, @height/2)

	end	

end