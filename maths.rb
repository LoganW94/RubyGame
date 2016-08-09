require 'gosu'

class Maths

	


	def move_x  left, right, x

		@left = false
		@right = false
     	 
     	@left = left
     	@right = right
     	
     	
      	if @left == true
    		x += 1
    		@left = false
    	end

    	if @right == true
    		x += -1
    		@right = false
    	end
    	
    	return x
    	

	end

	def move_y up, down, y

		@up = false
		@down = false

		@up = up
    	@down = down
    

    	if @up == true
    		y += 1
    		@up = false
    	end

    	if @down == true
    		y += -1
    		@down = false
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

	def enemy_spawn

	end




end