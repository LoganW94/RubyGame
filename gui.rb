require 'gosu'

require_relative 'game'

class GraphicInterface 
	
	def initialize window, player_level, player_exp, player_hp, player_in, location

		@player_level = player_level
		@player_exp = player_exp
		@player_hp = player_hp
		@player_in = player_in
		@location = location	

		#@menu = Gosu::Image.new
		@window = window
		
		
		@font = Gosu::Font.new(20)

		@inventory = Gosu::Image.new("graphics/inventory_menu.png")

		@save_and_quit_menu = Gosu::Image.new("graphics/inventory_menu.png")
	
	end

	def update
		
				

	end

	def draw
	
		@font.draw("HP: #{@player_hp}", 300+50, 5, 1)

		@font.draw("Location: #{@location}", 20,5,1)

		@font.draw("Level: #{@player_level}", 220+50 ,5,1)

		@font.draw("Exp: #{@player_exp}", 160+25, 5, 1)

		@font.draw("Inventory: #{@player_in}", 400+50,5,1)

		menu

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

	

end