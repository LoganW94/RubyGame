# RubyGame

key
+ add topic or method
> topic that already exists
! note

! misc	
	+ Create a save method which prints the player info to console.
	+ Make player and enemy class children of objects class
	+ Test pin an object to map near player to test the following
	+ Figure out how to move enemy relative to the map, and not the player.
	+ grid_x = #value determinded by a tile’s location in the array ie. [3,4]
	+ obj_pos_x = pos_x + (tile_size * grid_x)
	+ Add player movement values to the movement, or location, of non player entities.
	+ Perhaps pass through backdrop.width and .height to get x & y values.
	+ Or add enemies relative to the player location on backdrop, then add map movement to all non player objects
	+ Redesign player and create sprite sheet. Player design should be similar to early pokemon games.
	+ Get location name system working
	+ Display current item in inventory on screen
	+ Add crafting and destructible resources
	+ Draw text to screen from custom sprite font
> Classes
	+ Graphics
		+ Create method to break up a sprite sheet 
		+ Create method to animate sprites
		+ Design game info GUI at top of window
		+ Create proper graphics for save & quit menu, and inventory menu
		+ Create sprite font
		+ Design object graphics
			+ Chest
			+ Gold chest
			+ Demon chest
			+ Gold coin
			+ Sword
			+ Spear
			+ Bow
			+ Shield 
			+ Tree 
			+ House
			+ Long house
			+ Tent
			+ Tent 2
			+ House side
			+ Tall grass
			+ Rock
			+ Rock 2
		Design tile graphics
			+ Dirt
			+ Dirt 2
			+ Path
			+ Rock
			+ Rock 2
			+ Sand
			+ Water 
			+ Water 2
			+ Grass 
			+ Tall grass
			+ Cave floor
			+ Cave floor 2
			+ Cave floor 3
			+ Cave wall front
			+ Cave wall side left (mirror for side right)
			+ Cave wall back
			+ Cave wall top
	+ Enemy
		+ Create enemy_spawn method
	+ NPC
	+ AI
	+ Draw
		! This class will eventually be implemented in RubyGame to handle all drawing methods of other classes 	
	+ Language
		+ Create method to handle text input. 
		+ Add basic chat ai to NPCs. Think zork but not. I want the player to be able to have the ability to make requests and 	ask questions of the NPCs that would not be limited to preconstructed options 
		+ 
	> Mapgenerator
		+ method to generate dungeon levels
		! Randomly place your created content into the game world.
			Check that the content is placed in a spot that makes sense.
			Check that your content is reachable by the player.
			Repeat these steps until your level comes together nicely.
			Each map should be of size map_size^2.
			Each map should contain an even number of cells. 
			num_of_cells = (map_size / cell_size #in pixels)^2
			num_of_cell_tiles = (cell_size/tile_size)^2
			num_of_tiles = (map_size/tile_size)^2
			Each cell should have a size in pixels cell_size 
			Each cell has a size of 5x5 tiles each 16x16 pixels
			Add method to parse through the map array and reset tiles to create a better map
			Basically a check and repair method
			Also have some sort of test for completion so it won’t run infinitely  
	+ Maths 
		! this class is a library of algorithms to be used by other classes/methods
		+ pathfinder
		+ collision detection
		+ delta health
		+ attack
		+ defend
	> Player
		+ Create player_spawn method
		+ Change increase of reqexp per level to something better
		+ fix exp rollover
	> Menu
		+ Add and “are you sure you want to quit” query to startmenu once quit is selected.
	> Game 
		+ method to call player_spawn method
		+ method to call enemy_spawn
		+ a return game state method
	> Tile 
		+ method with algorithm to check over @map and make changes to values to create a proper map
		+ more default variables
		+	
	> objects
		+ In objects class add array for players and enemies
		+ Create method to spawn enemies
		+ Move common methods and class variables to objects class from player and enemy
		+ Create object inventory
	> Main 
		+ change global variable to Class @@Variable
	> Gamestate
		! fix issue of changing each state outside of menu class
		+
