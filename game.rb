require 'gosu'

require_relative 'background'
require_relative 'player'
require_relative 'gui'
require_relative 'maths'
require_relative 'inputhandler'
#require_relative 'objects'



class Game

	@@state = 1
	@@continue = false

	def initialize window, width, height
		@window = window
		@width = width
		@height = height
		@pos_x = 80
		@pos_y = 80	

		@backdrop = Background.new(@pos_x, @pos_y, @window)
		@gui = GraphicInterface.new
		@math = Maths.new
		@player = Player.new	
		@pause = false
		@counter = 0

	end

	def update enter, up, down, left, right, escape, tab

		@enter = enter
		@up = up
		@down = down
		@left = left
		@right = right
		@escape = escape
		@tab = tab
		@@state = 1
		
		if @pause == true
        	@counter +=1
        end

        if @counter >= 10
        	@pause = false
        	@counter = 0            
        end

		@player.update					
		
		@pos_x = @math.move_x(@left, @right, @pos_x)
		
		@pos_y = @math.move_y(@up, @down, @pos_y)

		#write a function that checks, and if needed, changes the spawn point (pos_x/y) to a mulitple of 16
		
		@backdrop.update

		if @pause == false

			if @escape == true
				@@state = 0
				@@continue = true
				@pause = true
			end

			if @tab == true
	   			@@state = 2 
	   			@pause = true
			end	
		end  				

	end

	def return_continue
		return @@continue
	end

	def return_state
		return @@state
	end

	def draw

		@gui.draw(@window, @player.level, @player.exp, @player.hp, @player.inventory, @backdrop.location)		

		@backdrop.draw(@pos_x, @pos_y)

		@player.draw(@width/2, @height/2 -5)

	end	

end