require 'gosu'



class Player

	def initialize(position_x, position_y)
    	
    @pos_x = position_x
    @pos_y = position_y

    @image = Gosu::Image.new("graphics/sprite.png", false)

    @level = 1
    @exp = 0
    @hp = 200



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

  def exp

    return @exp

  end 


  def update

    health
    exp
    level

  end

  def draw
   	 @image.draw(@pos_x, @pos_y, 1)
 	end

end