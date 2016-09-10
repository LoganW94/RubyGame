require 'gosu'

require_relative 'game'
require_relative 'menu'
require_relative 'inputhandler'
require_relative 'gui'
require_relative 'player'
require_relative 'newgame'

class Window < Gosu::Window

	@@continue = false
	@@state = 0
	

	def initialize width = 800, height = 600, fullscreen = false
		super
		
		self.caption = " ****pre pre pre pre prealpha****"
	
		@game = Game.new(self, width, height)
		
		@menu = Menu.new

		@input = Input.new(self)

		@gui = GraphicInterface.new

		@new_game = NewGame.new


	end

	def update	

		@input.update	
		

		if @@state == 0
			@@state = @menu.return_state
			@menu.update(@@continue, 
				@input.enter, 
				@input.up,
				@input.down,
				@input.left,
				@input.right,
				@input.escape)
		elsif @@state == 1
			@@state = @game.return_state
			@@continue = @game.return_continue
			@game.update(@input.enter, 
				@input.up,
				@input.down,
				@input.left,
				@input.right,
				@input.escape,
				@input.tab)
		elsif @@state == -1
			self.close
		elsif @@state == 2
			@@state = @gui.return_state
			@gui.update(@input.enter, 
				@input.up,
				@input.down,
				@input.left,
				@input.right,
				@input.tab)
		elsif @@state = 3
			@@state = @new_game.return_state
			@new_game.update(@input.enter, 
				@input.up,
				@input.down,
				@input.left,
				@input.right,
				@input.escape)
					
		end	

		print @@state
	end

	def draw		

		if @@state == 0
			@menu.draw
		elsif @@state == 1
			@game.draw
		elsif @@state == 2
			@gui.menu		
			@game.draw
		elsif @@state == 3
			@new_game.draw	
		end
				
	end

end

Window.new.show