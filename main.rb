require 'gosu'

require_relative 'game'
require_relative 'startmenu'

class GameWindow < Gosu::Window

	def initialize width = 800, height = 600, fullscreen = false
		super
		$game_state = 0
		self.caption = "Hero of  add name of town here          ****pre alpha****"
		@start = StartMenu.new(self)
		@game = Game.new(self, width, height)


	end

	def update

		# pass other game states through to here
		# have the main update manage the start menu, game, pause menu, and inventory menu

		if $game_state ==0
			@start.update
		end

		if $game_state == 1
			@game.update
		end	
	

	end

	def draw

		if $game_state == 0
			@start.draw
		elsif $game_state == 1
			@game.draw		
		end		

	end

end

GameWindow.new.show