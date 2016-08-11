require 'gosu'

require_relative 'game'
require_relative 'menu'
require_relative 'inputhandler'
require_relative 'gui'
require_relative 'gamestates'
require_relative 'player'

class Window < Gosu::Window

	$continue = false

	def initialize width = 800, height = 600, fullscreen = false
		super
		
		self.caption = " ****pre pre pre pre prealpha****"
	
		@game = Game.new(self, width, height)
		
		@menu = Menu.new(self)

		@input = Input.new(self)

		@gui = GraphicInterface.new

		@state = State.new
		@delta = 0

		# Yep. Global variables are generally bad form. What I would do is use a class variable (@@state = 0) and then you can just call menu.game_state.


	end

	def update	

		@input.update

		@state.change_state(@state.game_state, @delta)
		@state.game_state

		if @state.game_state == 0
			@menu.update($continue, 
				@input.enter, 
				@input.up,
				@input.down,
				@input.left,
				@input.right,
				@input.escape,
				@state.game_state,
				@delta)
		elsif @state.game_state == 1
			@game.update(@input.enter, 
				@input.up,
				@input.down,
				@input.left,
				@input.right,
				@input.escape,
				@input.tab,
				@state.game_state)
		elsif @state.game_state == -1
			self.close
		elsif @state.game_state == 2
			@gui.update(@input.enter, 
				@input.up,
				@input.down,
				@input.left,
				@input.right,
				@input.escape,
				@input.tab,
				@state.game_state)
		else
			print @state.game_state
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