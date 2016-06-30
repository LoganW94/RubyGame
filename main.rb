require 'gosu'

require_relative 'game'
require_relative 'startmenu'
require_relative 'newgame'

class Window < Gosu::Window

	$game_state = 0
	$continue = false

	def initialize width = 800, height = 600, fullscreen = false
		super
		
		self.caption = "add name of game here          ****pre alpha****"
		@start = StartMenu.new(self)
		@game = Game.new(self, width, height)
		@new = NewGame.new(self)


	end

	def update

		# have the main update manage the start menu, game, and inventory menu

		if $game_state ==0
			@start.update($continue)
		elsif $game_state == 1
			@game.update
		elsif $game_state == 2
			@new.update	
		elsif $game_state == -1
			self.close		
		end	

	end

	def draw

		if $game_state == 0
			@start.draw
		elsif $game_state == 1
			@game.draw	
		elsif $game_state == 2
			@new.draw			
		end		

	end

end

Window.new.show