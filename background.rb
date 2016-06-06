require 'gosu'

class Background

	def initialize
    	@image = Gosu::Image.new("sprites/town.png", false)
    	
  	end

   	def update

  	end

  	def draw
  		
   	 	@image.draw(0, 30, 0)

 	end

end