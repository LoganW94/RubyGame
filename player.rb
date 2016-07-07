require 'gosu'



class Player


    attr_accessor :hp
    attr_accessor :exp
    attr_accessor :level
    attr_accessor :req_xp

	def initialize

    hp = 20
    exp = 0
    level = 1
    req_xp = 50

    @image = Gosu::Image.new("graphics/player.bmp", false)

  end

  def gain_exp exp 

    @exp = exp.to_i   
   
    return @exp += 1
    
  end

  def delta_health hp, delta_hp

    @hp = hp.to_i
    @delta_hp = delta_hp.to_i

    @hp += @delta_hp

  end

  def incriment_reqxp req_xp

    @req_xp = req_xp.to_i

    @req_xp *= 1.25
  end

  def level_up level, hp
  
    @level = level.to_i
    @hp = hp.to_i
    

    @level += 1  
    @hp += rand(1..10)
    
    return @level, @hp

  end

  def inventory

    return "Sword of burning"

  end

  def update level, exp, hp, req_xp

    @level = level.to_i
    @exp = exp.to_i
    @hp = hp.to_i
    @req_xp = req_xp.to_i

    @exp += 1

    if @exp > @req_xp
      incriment_reqxp(@req_xp)
      puts @exp
      @exp = 0
    end

    #delta_health
=begin
    if @exp >= @req_xp
      level_up(@level, @hp)
      incriment_reqxp(@req_xp)

    end    
=end
    inventory


  end 

  def draw position_x, position_y 
      
    @pos_x = position_x
    @pos_y = position_y

   	@image.draw(@pos_x, @pos_y, 1)
 	end

end