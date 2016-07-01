require 'gosu'



class Player


    attr_accessor :hp
    attr_accessor :exp
    attr_accessor :level
    attr_accessor :reqExp

	def initialize

    @image = Gosu::Image.new("graphics/player.bmp", false)

  end

  def gain_exp exp
    @exp = exp
    @exp += 1
    return @exp
    
  end

  def delta_health hp, delta_hp

    @hp = hp
    @delta_hp = delta_hp

    @hp += @delta_hp

  end

  def incriment_reqexp reqExp, playerlevel

    @reqExp =reqExp
    @playerlevel = playerlevel

    @reqExp *= 1.25
  end

  def level_up level, hp, exp
  
    @level = level
    @hp = hp
    @exp = exp

    @level += 1  
    @hp += rand(1..10)
    
    return @level, @hp

  end

  def inventory

    return "Sword of burning"

  end

  def draw position_x, position_y 
      
    @pos_x = position_x
    @pos_y = position_y

   	@image.draw(@pos_x, @pos_y, 1)
 	end

end