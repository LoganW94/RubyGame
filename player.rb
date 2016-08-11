require 'gosu'



class Player

    attr_accessor :hp, :exp, :level, :req_xp

    @@x


	def initialize    

    @image = Gosu::Image.new("graphics/player.bmp", false)

    @hp = rand(10..20)
    @exp = 0
    @level = 1
    @req_xp = 100

  end

  def inventory

    return "Sword of burning"

  end

  def level_up

    if @exp >= @req_xp
      @level += 1
      @hp += rand(1..10)
      @exp = 0
      @req_xp *= 1.20
    end


  end

  def update

    #replace with proper experience gain system
    @exp +=1
   
    level_up

    inventory

  end 

  def draw position_x, position_y 
      
    @pos_x = position_x
    @pos_y = position_y

   	@image.draw(@pos_x, @pos_y, 1)


 	end

end