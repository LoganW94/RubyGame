require 'gosu'



class Player

	def initialize(position_x, position_y, window, level, experience)
    	@image = Gosu::Image.new("graphics/sprite.png", false)
    	@pos_x = position_x
    	@pos_y = position_y
    	@window = window
      @level = level
      exp = experience
  end

  def level_up(exp, level)
    
    if exp >= 100
      level += 1
      exp = 0

      return level
    end

  end

  def gain_exp(exp)

    exp += 1
    return exp

  end

  def update(exp, level)

    level_up(exp, level)
    gain_exp(exp)

		 puts "#{level} , #{exp}"

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