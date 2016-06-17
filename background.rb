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

   	def update


   		if @window.button_down?(Gosu::KbLeft)     
   		  @pos_x += 2 
   		end    

   		if @window.button_down?(Gosu::KbRight) 
    	    @pos_x += -2        		 
   		end

   		if @window.button_down?(Gosu::KbUp)
        	@pos_y += 2  
   		end

   		if @window.button_down?(Gosu::KbDown) 
        	@pos_y += -2 	
   		end

  	end

  	def draw
  		
   	 	@image.draw(@pos_x, @pos_y, 0)

 	end

end