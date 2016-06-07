require 'gosu'

require_relative 'game'

class GameWindow < Gosu::Window

	def initialize width = 800, height = 600, fullscreen = false

		super width, height, fullscreen
		self.caption = "DUNGEON MASTER ****pre alpha****"

		@game = Game.new(self)		

	end

	def update	
		
		if button_down?(Gosu::KbEscape) 
			self.close
		end  

		@game.update(self)

	end

	def draw

		@game.draw(self)

	end

end

GameWindow.new.show