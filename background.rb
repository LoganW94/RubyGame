require 'gosu'

require_relative 'mapgenerator'

class Background

	def initialize position_x, position_y, window
		  @pos_x = position_x
    	@pos_y = position_y
      @pos_x_init = @pos_x
    	@window = window

      @is_map = false
      
    	@image = Gosu::Image.new("graphics/map.jpg", false)
      @map = MapGen.new
      @map.map_gen

    	
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

      if @is_map == false
           

          @map.map.each do |i|
            i.length.times do |x|
              print "#{i[x].val} "
            end 
            print "\n"
          end 

          @is_map = true
      end

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

  	end

  	def draw
  		
   	 	#@image.draw(@pos_x, @pos_y, 0)

      @map.draw(@map.map, @pos_x, @pos_y, @pos_x_init)

 	end

end