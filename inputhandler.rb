require 'gosu'


class Input

	attr_accessor :enter
	attr_accessor :up
	attr_accessor :down
	attr_accessor :left
	attr_accessor :right
	attr_accessor :space
	attr_accessor :escape

	
	def initialize window

		@window = window

		enter = false
		up = false
		down = false
		left = false
		right = false
		space = false
		escape = false 		

		@new_press_return, @new_press_up, @new_press_down, @new_press_left, @new_press_right, @new_press_space, @new_press_escape = false
		

	end


	def update enter, up, down, left, right, space, escape

		@enter = enter
		@up = up
		@down = down
		@left = left
		@right = right
		@space = space
		@escape = escape

		#get input
		
		if @window.button_down?(Gosu::KbReturn) && @new_press_enter
        	return @enter = true 
        end       	

        if @window.button_down?(Gosu::KbUp) && @new_press_up
        	return @up = true   
        end    

        if @window.button_down?(Gosu::KbDown) && @new_press_down 
        	return @down = true  
        end

        if @window.button_down?(Gosu::KbLeft) && @new_press_left
        	return @left = true
        end

        if @window.button_down?(Gosu::KbRight) && @new_press_right
        	return @right = true            		      	
   		end

		@enter = false
		@up = false
		@down = false
		@left = false
		@right = false
		@space = false
		@escape = false 	
		
		@new_press_enter = !@window.button_down?(Gosu::KbReturn)
		@new_press_up= !@window.button_down?(Gosu::KbUp)
		@new_press_down = !@window.button_down?(Gosu::KbDown)        
        @new_press_left = !@window.button_down?(Gosu::KbLeft)
        @new_press_right = !@window.button_down?(Gosu::KbRight)
        @new_press_space = !@window.button_down?(Gosu::KbSpace)
        @new_press_escape = !@window.button_down?(Gosu::KbEscape)

=begin
		if @window.button_down?(Gosu::KbDown) && @new_press_down
			return @down = true
		elsif @window.button_down?(Gosu::KbReturn) && @new_press_enter
			return @enter = true 	
		end

		@new_press_enter = !@window.button_down?(Gosu::KbReturn)
		@new_press_down = !@window.button_down?(Gosu::KbDown)

		
=end
	end


end