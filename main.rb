require 'gosu'

require_relative 'game'

class GameWindow < Gosu::Window

	def initialize width = 800, height = 600, fullscreen = false

		super width, height, fullscreen
		self.caption = "Hero of Damerel          ****pre alpha****"

		@game = Game.new(self, width, height)		

	end

	def update	

		@game.update(self)

	end

	def draw

		@game.draw(self)

	end

end

GameWindow.new.show