require 'gosu'

require_relative 'game'
require_relative 'menu'
require_relative 'inputhandler'
require_relative 'gui'

class Window < Gosu::Window

	$game_state = 0
	$continue = false

	def initialize width = 800, height = 600, fullscreen = false
		super
		
		self.caption = " ****pre pre pre pre prealpha****"
	
		@game = Game.new(self, width, height)
		
		@menu = Menu.new(self)

		@input = Input.new(self)

		@gui = GraphicInterface.new

		# Yep. Global variables are generally bad form. What I would do is use a class variable (@@state = 0) and then you can just call menu.game_state.


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
		elsif $game_state == 2
			@gui.update(@input.enter, 
				@input.up,
				@input.down,
				@input.left,
				@input.right,
				@input.escape)						
		end	


	end

	def draw		

		if $game_state == 0
			@menu.draw
		elsif $game_state == 1
			@game.draw
		elsif $game_state == 2
			@gui.menu		
			@game.draw
		end
				
	end

end

Window.new.show