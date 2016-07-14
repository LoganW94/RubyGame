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
        

      if @up == true && @left == true
          @pos_y += 1
          @pos_x += 1
      elsif @up == true && @right == true
          @pos_y += 1
          @pos_x += -1
      elsif @up == true && @down == true
          @pos_y += 0
          @pos_x += 0
      elsif @up == true
          @pos_y +=2                
      end

      if @down == true && @left == true
          @pos_y += -1
          @pos_x += 1
      elsif @down == true && @right == true
          @pos_y += -1
          @pos_x += -1
      elsif @down == true && @up == true
          @pos_y += 0
          @pos_x += 0
      elsif @down == true
          @pos_y +=-2                
      end

      if @left == true && @up == true
          @pos_y += 1
          @pos_x += 1
      elsif @left == true && @right == true
          @pos_y += 0
          @pos_x += 0
      elsif @left == true && @down == true
          @pos_y += 1
          @pos_x += -1
      elsif @left == true
          @pos_x += 2                
      end

      if @right == true && @left == true
          @pos_y += 0
          @pos_x += 0
      elsif @right == true && @up == true
          @pos_y += 1
          @pos_x += -1
      elsif @right == true && @down == true
          @pos_y += -1
          @pos_x += -1
      elsif @right == true
          @pos_x +=-2                
      end
=begin      

      if @down == true 
          @pos_y += -2  
      end

     	if @left == true     
     	  @pos_x += 2 
     	end    

      if @right == true 
          @pos_x += -2        		 
     	end
=end
  	end

  	def draw
  		
   	 	@image.draw(@pos_x, @pos_y, 0)

 	end

end