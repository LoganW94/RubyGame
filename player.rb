require 'gosu'



class Player


    attr_accessor :hp
    attr_accessor :exp
    attr_accessor :level

	def initialize

    @image = Gosu::Image.new("graphics/player.bmp", false)

  end

  def gain_exp exp
    @exp = exp
    @exp += 5
    return @exp
    
  end

  def delta_health


  end

  def level_up level
  
    @level = level

    @level += 1  
      
    return @level

  end

  def inventory

    return "Sword of burning"

  end

  def update 

    
  end

  def draw position_x, position_y 
      
    @pos_x = position_x
    @pos_y = position_y

   	@image.draw(@pos_x, @pos_y, 1)
 	end

end