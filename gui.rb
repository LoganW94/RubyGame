require 'gosu'

require_relative 'game'

class GraphicInterface 

	$game_state = 0
	
	def initialize 	
						
		@font = Gosu::Font.new(20)

		@inventory = Gosu::Image.new("graphics/inventory_menu.bmp")

		@save_and_quit_menu = Gosu::Image.new("graphics/inventory_menu.bmp")

		@new_press_tab = false
	
	end

	def draw window, player_level, player_exp, player_hp, player_in, location
		
		@@window = window
		@player_level = player_level
		@player_exp = player_exp
		@player_hp = player_hp
		@player_in = player_in		
		@location = location
	
		@font.draw("HP: #{@player_hp}", 420, 5, 1)

		@font.draw("Location: #{@location}", 20,5,1)

		@font.draw("Level: #{@player_level}", 320 ,5,1)

		@font.draw("Exp: #{@player_exp}", 200, 5, 1)

		@font.draw("Inventory: #{@player_in}", 550,5,1)

		#draw_line(0, 1, 0xff000000, 800, 1, 0xff000000)
		#draw_quad(x1, y1, c1, x2, y2, c2, x3, y3, c3, x4, y4, c4, z = 0, mode = :default)
	end

	def update enter, up, down, left, right, escape

		@enter = enter
		@up = up
		@down = down
		@left = left
		@right = right
		@escape = escape

		if @@window.button_down?(Gosu::KbTab)
   			return  $game_state = 1, $continue = true
   		end

   		@new_press_tab = !@@window.button_down?(Gosu::KbTab)

	end

	def menu

		@inventory.draw(200,150,5)		

	end
	

end