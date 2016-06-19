require 'gosu'

require_relative 'background'
require_relative 'player'
require_relative 'gui'
#require_relative 'objects'



class Game


	def initialize window, width, height
		@window = window
		@width = width
		@height = height

		@backdrop = Background.new(-300, -1000, @window)
		@gui = GraphicInterface.new


	
		@player = Player.new
		@player.level = 1
		@player.exp = 0
		@player.hp = 20
		@player.reqExp = 200

	end

	def update 
		

		# update player level and exp.
		# add other stat updates to this asap
		# move to player class at some point

		@player.exp = @player.gain_exp(@player.exp)
		
		if @player.exp >= @player.reqExp 

			if @player.exp > @player.reqExp
				expDiff = @player.exp - @player.reqExp
			end
			@player.level_up(@player.level)
			@player.exp = 0 + expDiff.to_i
			@player.reqExp = @player.incriment_reqexp(@player.reqExp)

		end


				
		@backdrop.update
		
		
	end

	def draw

		@gui.draw(@window, @player.level, @player.exp, @player.hp, @player.inventory, @backdrop.location)

		@backdrop.draw

		@player.draw(@width/2, @height/2)

	end	

end