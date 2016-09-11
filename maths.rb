require 'gosu'

class Maths

	def initialize window
		@@window = window
	end


	def move_x  x
   	
    	if @@window.button_down?(Gosu::KbLeft) == true
  		x += 16
  		end

  		if @@window.button_down?(Gosu::KbRight) == true
  			x += -16
    	end
    	
    	return x
 
	end

	def move_y y

		@up = false
		@down = false

		@up = up
   		@down = down
    

	    if @@window.button_down?(Gosu::KbUp) == true
	    	y += 16
	    end

	    if @@window.button_down?(Gosu::KbDown) == true
	    	y += -16
	    end
		
	    return y

	end

	def colide_detect

	end

	def pathfinder

	end

	def delta_hp

	end

	def attack

	end 

	def defend

	end

end