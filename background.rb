require 'gosu'

class Background

	def initialize position_x, position_y, window
		  @pos_x = position_x
    	@pos_y = position_y
    	@window = window


    	@image = Gosu::Image.new("graphics/map.jpg", false)
    	
  	end

  	def location
  		@location = "add name"
  		return @location

  	end

   	def update up, down, left, right

        @up = up
        @down = down
        @left = left
        @right = right
        

        if @up == true
            @pos_y += 2  
        end

        if @down == true 
            @pos_y += -2  
        end

     		if @left == true     
     		  @pos_x += 2 
     		end    

        if @right == true 
      	    @pos_x += -2        		 
     		end

  	end

  	def draw
  		
   	 	@image.draw(@pos_x, @pos_y, 0)

 	end

end