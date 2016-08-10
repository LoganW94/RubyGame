require 'gosu'

class Maths

	def menu_select    

    #verticle movement

    if @down == true && @wait == false
      if @pos_y == @pos_one
        @pos_y = @pos_two
        @wait = true
      elsif @pos_y == @pos_two
        @pos_y = @pos_three
        @wait = true
      end
    elsif @up == true && @wait == false             
      if @pos_y == @pos_two
        @pos_y = @pos_one
        @wait = true
      elsif @pos_y == @pos_three
        @pos_y = @pos_two
        @wait = true                
      end
    end

    #selection
    if @wait == false
      if @pos_y == @pos_one && @enter == true && @continue == false
        $game_state = 1 # replace with new game creation menu
        @wait = true
      elsif @pos_y == @pos_one && @enter == true && @continue == true
        $game_state = 1
        @wait = true
      elsif @pos_y == @pos_two && @enter == true && @continue == false
        puts "load game" #replace with load game options
        @wait = true
      elsif @pos_y == @pos_two && @enter == true && @continue == true 
        puts "saved game"
        @wait = true
      elsif @pos_y == @pos_three && @enter == true
        $game_state = -1
      end
    end


  end


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