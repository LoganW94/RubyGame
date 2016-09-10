require 'gosu'

class NewGame


	def initialize

		@font = Gosu::Font.new(50)

	end

	def update enter, up, down, left, right, escape
		@enter = enter
		@up = up
		@down = down
		@left = left
		@right = right
		@escape = escape
		@state = 3

		if @escape == true
			@state = 0
		end

		if @enter == true
			@state = 1
		end

	end	

	def return_state
		return @state
	end

	def draw

		@font.draw("press Enter to play, or Escape to quit", 20, 250, 1)

	end

end