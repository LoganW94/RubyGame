require 'gosu'

require_relative 'mapgenerator'

class Background

	def initialize position_x, position_y, window
		  @pos_x = position_x
    	@pos_y = position_y
    	@window = window

      @is_map = false
      
      @map = MapGen.new
      @map.map_gen

    	
  	end

  	def location
  		@location = "add name"
  		return @location

  	end

   	def update       

  	end

  	def draw x, y
=begin
      @map.map.each do |i|
        i.length.times do |x|
          print "#{i[x].val} "
        end 
        print "\n"
      end 
=end

      @map.draw(@map.map, x, y)

 	end

end