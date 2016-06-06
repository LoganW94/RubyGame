require 'gosu'



class Player

	def initialize(position_x = 800/2, position_y = 600/2, window)
    	@image = Gosu::Image.new("sprites/sprite.png", false)
    	@pos_x = position_x
    	@pos_y = position_y
    	@window = window
  end

  def update
		 
   	if @window.button_down?(Gosu::KbLeft) 

      if @pos_x < 0 
        @pos_x += 0.05
      else
   		  @pos_x += -2 
      end

   	end  

   	if @window.button_down?(Gosu::KbRight) 

      if @pos_x > 800 - @image.width
        @pos_x += -0.05
      else
        @pos_x += 2 
      end
   		 
   	end

   	if @window.button_down?(Gosu::KbUp) 

      if @pos_y < 31  
        @pos_y += 0.05
      else        
        @pos_y += -2  
      end

   	end

   	if @window.button_down?(Gosu::KbDown) 

      if @pos_y > 600 - @image.height 
        @pos_y += -0.05
      else
        @pos_y += 2  
      end

   		
   	end

  end

  def draw
   	 @image.draw(@pos_x, @pos_y, 0)
 	end

end