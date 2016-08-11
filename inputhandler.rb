require 'gosu'


class Input

	attr_accessor :enter, :up, :down, :left, :right, :space, :escape, :tab, :pause

	
	def initialize window

		@window = window

		@enter, @up, @down, @left, @right, @space, @escape, @tab = false		

		@new_press_return, @new_press_up, @new_press_down, @new_press_left, @new_press_right, @new_press_space, @new_press_escape, @new_press_tab = false


        @counter = 0
        @pause = false

	end


	def update
        
        if @pause == true
          @counter +=1
        end

        if @counter >= 10
          @pause = false
          @counter = 0            
        end
       	
        if @pause == false

            if @window.button_down?(Gosu::KbReturn) && @new_press_enter
                return @enter = true, @pause = true                 
            end         

            if @window.button_down?(Gosu::KbUp) && @new_press_up
                return @up = true, @pause = true                 
            end    

            if @window.button_down?(Gosu::KbDown) && @new_press_down
                return @down = true, @pause = true                
            end

            if @window.button_down?(Gosu::KbLeft) && @new_press_left
                return @left = true, @pause = true                
            end

            if @window.button_down?(Gosu::KbRight) && @new_press_right
                return @right = true, @pause = true                                       
            end

            if @window.button_down?(Gosu::KbEscape) && @new_press_escape
                return @escape = true, @pause = true                
            end

            if @window.button_down?(Gosu::KbTab) && @new_press_tab
                return @tab = true, @pause = true                
            end

        end



		@enter, @up, @down, @left, @right, @space, @escape, @tab = false 	
		
		@new_press_enter = !@window.button_down?(Gosu::KbReturn)
		@new_press_up= !@window.button_down?(Gosu::KbUp)
		@new_press_down = !@window.button_down?(Gosu::KbDown)        
        @new_press_left = !@window.button_down?(Gosu::KbLeft)
        @new_press_right = !@window.button_down?(Gosu::KbRight)
        @new_press_space = !@window.button_down?(Gosu::KbSpace)
        @new_press_escape = !@window.button_down?(Gosu::KbEscape)
        @new_press_tab = !@window.button_down?(Gosu::KbTab)

	end


end