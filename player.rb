require 'gosu'



class Player

	def initialize(position_x, position_y)
    	
    @pos_x = position_x
    @pos_y = position_y

    @hp = 200
    @level = 1
    @exp = 0


    @image = Gosu::Image.new("graphics/sprite.png", false)


  end

  def inventory

    return "Sword of burning"

  end

  def health
    
    return @hp

  end

  def  level  
    
    return @level
    
  end

  def level_up

    @level +=1

  end

  def exp
    

    return @exp

  end 


  def update

    health
    exp
    level_up
    level
  
  end

  def draw
   	 @image.draw(@pos_x, @pos_y, 1)
 	end

end