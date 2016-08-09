require 'gosu'


class Input

	attr_accessor :enter, :up, :down, :left, :right, :space, :escape

	
	def initialize window

		@window = window

		@enter, @up, @down, @left, @right, @space, @escape = false 		

		@new_press_return, @new_press_up, @new_press_down, @new_press_left, @new_press_right, @new_press_space, @new_press_escape = false
		

	end


	def update

		
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

		@enter, @up, @down, @left, @right, @space, @escape = false 	
		
		@new_press_enter = !@window.button_down?(Gosu::KbReturn)
		@new_press_up= !@window.button_down?(Gosu::KbUp)
		@new_press_down = !@window.button_down?(Gosu::KbDown)        
        @new_press_left = !@window.button_down?(Gosu::KbLeft)
        @new_press_right = !@window.button_down?(Gosu::KbRight)
        @new_press_space = !@window.button_down?(Gosu::KbSpace)
        @new_press_escape = !@window.button_down?(Gosu::KbEscape)

	end


end