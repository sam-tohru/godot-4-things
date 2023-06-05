extends Node3D

## This needs to be added to the your main file
## globs = Global / Autoload file [make sure to add the global signals into the global file]


# Reference to player
@onready var player = $Player

# Refrence the save resource
var save: SaveGame 



func _ready() -> void:
	globs.load_game_main.connect(load_game_main)
	globs.save_game_main.connect(save_game_main)
	
	
	create_or_load_save()

################################################################################
## Saves ##
func create_or_load_save():
	if SaveGame.save_exists('auto'):
		load_game_main('auto')
	else:
		save_game_main('auto')

func save_game_main(id: String):
	# new SaveGame resource
	save = SaveGame.new()
	
	## Stuff to save (player_position & save_date)
	save.player_position = player.global_position
	save.this_save_date = Time.get_datetime_string_from_system()
	
	# saves 
	save.write_savegame(id)
	
	# Game updates after save done
	globs.update_save_dates()
	globs.emit_signal('updated_save')

func load_game_main(id: String):
	# Checks if save doesn't exist, 
	if SaveGame.save_exists(id) == false: return
	
	# loads save
	save = SaveGame.load_savegame(id) as SaveGame
	
	## Stuff to load (player_position)
	player.global_position = save.player_position
	
	# Game updates after load done
	globs.update_save_dates()
	globs.emit_signal('updated_save')
