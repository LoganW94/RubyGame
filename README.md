# RubyGame


The game will be a simple dungeon crawler at first, but I'll slowly add more features as I get the skills to do so.
Currently the plan is to early pokemon game look mixed with a dungeaon crawler. 
the player will have a home village and a few  other locations and routes that can be traveled. 
the main objective will be a mine that was abandoned cetuies ago by the ancesters of the game's village.
The village Elder notices a dark energy eminating from the long abandoned mine, and sends the player on a quest to discover the source.
as the player travels from the village they will be attacked by hostile creatues turned mad by the evil from the mine.
the mine itself will have procedurally generated levels which will get more dificult the deeper the player goes.
as the player goes deeper, the better the loot and the stronger the enemies 

TODO

in no specific order

Take refresher for Ruby

Make a object class to handle game objects
Make a render class to replace the draw method in game
Redesign player and create sprite sheet. Player design should be similar to  early pokemon games. See references below
Make background move around player.
Create large map to replace background
Fix player level up system
Get location name system working
Create player inventory
Display current item in inventory on screen
Add player experience bar to GUI
Design game info GUI at top of window
Create graphics class which loads tiles based on a values in text doc

Design object graphics
Chest
Gold chest
Demon chest
Copper coin
Silver coin
Gold coin
Sword
Spear
Bow
Shield 
Tree 
House
Long house
Tent
Tent 2
House side
Tall grass
Rock
Rock 2

Design tile graphics
Dirt
Dirt 2
Path
Rock
Rock 2
Sand
Water 
Water 2
Grass 
Tall grass
Cave floor
Cave floor 2
Cave floor 3
Cave wall front
Cave wall side
Cave wall back
Cave wall top

Create class which generates dungeon levels based on values in text doc
Create method to procedurally create text document which associates values with different terrain types.
Create method to allow for text input.
Add basic chat ai to NPCs. Think zork but not. I want the player to be able to have the ability to make requests and ask questions of the NPCs that would not be limited to preconstructed options 
Create input handler class to control input.
Create proper graphics for save & quit menu, and inventory menu
Pause game when menu buttons are pressed. Menu buttons act like switches, once presed they have to be pressed again in order to close the menu
Create sprite font
Draw text to screen from custom sprite font
Create save game method in game class
Create load game method in game class
