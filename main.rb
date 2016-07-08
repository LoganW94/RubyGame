require 'gosu'

require_relative 'game'
require_relative 'menu'
require_relative 'inputhandler'

class Window < Gosu::Window

	$game_state = 0
	$continue = false

	def initialize width = 800, height = 600, fullscreen = false
		super
		
		self.caption = " ****pre alpha****"
	
		@game = Game.new(self, width, height)
		
		@menu = Menu.new(self)

		@input = Input.new(self)
		

	end

	def update	

		@input.update	

		if $game_state == 0
			@menu.update($continue, 
				@input.enter, 
				@input.up,
				@input.down,
				@input.left,
				@input.right,
				@input.escape)
		elsif $game_state == 1
			@game.update(@input.up,
				@input.down,
				@input.left,
				@input.right)
		elsif $game_state == -1
			self.close	
		end	


	end

	def draw		

		if $game_state == 0
			@menu.draw
		elsif $game_state == 1
			@game.draw
		end
				
	end

end

Window.new.show