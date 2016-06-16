require 'gosu'

require_relative 'game'

class GameWindow < Gosu::Window

	def initialize width = 800, height = 600, fullscreen = false
		super

		self.caption = "Hero of  add name of towm here          ****pre alpha****"

		@game = Game.new(self, width, height)		

	end

	def update	

		@game.update

	end

	def draw

		@game.draw

	end

end

GameWindow.new.show