require 'gosu'

class GraphicInterface 
	
	def initialize(window)

		#@menu = Gosu::Image.new
		@window = window
		@stat_bar = Gosu::Image
		@location_text = Gosu::Image.from_text self, "Location: HOMETOWN", Gosu.default_font_name, 20
		@level_text = Gosu::Image.from_text self, "Level: 1", Gosu.default_font_name, 20
		@hp_text = Gosu::Image.from_text self, "HP: 20", Gosu.default_font_name, 20
		@inventory_text = Gosu::Image.from_text self, "Inventory: Sword of Burning", Gosu.default_font_name, 20
		@inventory = Gosu::Image.new("graphics/inventory_menu.png")
	
	end

	def update


	end

	def draw

		@location_text.draw(20,5,1)
		@level_text.draw(220,5,1)
		@hp_text.draw(300,5,1)
		@inventory_text.draw(400,5,1)
		menu


		#draw_line(0, 1, 0xff000000, 800, 1, 0xff000000)
		#draw_quad(x1, y1, c1, x2, y2, c2, x3, y3, c3, x4, y4, c4, z = 0, mode = :default)
	end

	def menu
		if @window.button_down?(Gosu::KbTab) 
			@inventory.draw(200,150,5)
		end
	end
end