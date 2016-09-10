require 'gosu'

require_relative 'game'
require_relative 'menu'
require_relative 'inputhandler'
require_relative 'gui'
require_relative 'player'

class Window < Gosu::Window

	@@continue = false
	@@state = 0
	

	def initialize width = 800, height = 600, fullscreen = false
		super
		
		self.caption = " ****pre pre pre pre prealpha****"
	
		@game = Game.new(self, width, height)
		
		@menu = Menu.new(self)

		@input = Input.new(self)

		@gui = GraphicInterface.new


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
		end
				
	end

end

Window.new.show