require 'gosu'

require_relative 'game'
require_relative 'startmenu'

class Window < Gosu::Window

	$game_state = 0
	$continue = false

	def initialize width = 800, height = 600, fullscreen = false
		super
		
		self.caption = "add name of game here          ****pre alpha****"
		@start = StartMenu.new(self)
		@game = Game.new(self, width, height)


	end

	def update

		# pass other game states through to here
		# have the main update manage the start menu, game, pause menu, and inventory menu

		if $game_state ==0
			@start.update($continue)
		elsif $game_state == 1
			@game.update
		elsif $game_state == -1
			self.close		
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

Window.new.show