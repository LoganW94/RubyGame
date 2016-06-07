require 'gosu'

require_relative 'game'

class GraphicInterface 
	
	def initialize(window, player_level, player_exp)

		#@menu = Gosu::Image.new
		@window = window
		@player_level = player_level
		@player_exp = player_exp
		
		@location_text = Gosu::Image.from_text self, "Location: HOMETOWN", Gosu.default_font_name, 20
		@location_text_two = Gosu::Image.from_text self, "Location: Unknown", Gosu.default_font_name, 20
		@level_text = Gosu::Image.from_text self, "Level: #{@player_level}", Gosu.default_font_name, 20
		@hp_text = Gosu::Image.from_text self, "HP: 20", Gosu.default_font_name, 20
		@inventory_text = Gosu::Image.from_text self, "Inventory: Sword of Burning", Gosu.default_font_name, 20
		@inventory = Gosu::Image.new("graphics/inventory_menu.png")
		@save_and_quit_menu = Gosu::Image.new("graphics/inventory_menu.png")
	
	end

	def draw(location_id)
		@location_id = location_id
		
		#@level_text.draw(220,5,1)
		@hp_text.draw(300,5,1)
		@inventory_text.draw(400,5,1)
		disp_player_level
		menu
		location(@location_id)


		#draw_line(0, 1, 0xff000000, 800, 1, 0xff000000)
		#draw_quad(x1, y1, c1, x2, y2, c2, x3, y3, c3, x4, y4, c4, z = 0, mode = :default)
	end

	def menu

		if @window.button_down?(Gosu::KbTab) 
			@inventory.draw(200,150,5)
		elsif @window.button_down?(Gosu::KbEscape)
			@save_and_quit_menu.draw(100,75,5)
		end

	end

	def disp_player_level
		@level_text.draw(220,5,1)
	end

	def location(location_id)
		
		if @location_id == 1
			@location_text.draw(20,5,1)
		else
			@location_text_two.draw(20,5,1)
		end
	end

end