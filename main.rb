require 'gosu'

require_relative 'game'
require_relative 'startmenu'

class Window < Gosu::Window

	def initialize width = 800, height = 600, fullscreen = false
		super
		$game_state = 0
		self.caption = "add name of game here          ****pre alpha****"
		@start = StartMenu.new(self)
		@game = Game.new(self, width, height)


	end

	def update

		quit = false

		# pass other game states through to here
		# have the main update manage the start menu, game, pause menu, and inventory menu

		if $game_state ==0
			@start.update
		elsif $game_state == 1
			@game.update
		elsif $game_state == -1
			return self.close		
		end	
		
#		if $game_state == 0 && self.button_down?(Gosu::KbEscape)
#			self.close
#		end

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