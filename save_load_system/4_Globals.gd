extends Node

## This needs to be in a globals file (any auto-laod file will do)
# Global signals + a function that get's all save_dates from each save on disc

## Saves & Loads signals, goes to main
signal load_game_main
signal save_game_main
signal updated_save


## Holds a dictionary of the save_id with save_date
## access with save_dates[id]
## you don't need this, but can be useful to have all saves dates in the current save
@onready var save_dates: Dictionary
func update_save_dates():
	var save: SaveGame
	if SaveGame.save_exists('auto'):
		save = SaveGame.load_savegame('auto') as SaveGame
		save_dates['auto'] = save.this_save_date
	if SaveGame.save_exists('0'):
		save = SaveGame.load_savegame('0') as SaveGame
		save_dates['0'] = save.this_save_date
	if SaveGame.save_exists('1'):
		save = SaveGame.load_savegame('1') as SaveGame
		save_dates['1'] = save.this_save_date
	if SaveGame.save_exists('2'):
		save = SaveGame.load_savegame('2') as SaveGame
		save_dates['2'] = save.this_save_date
	if SaveGame.save_exists('3'):
		save = SaveGame.load_savegame('3') as SaveGame
		save_dates['3'] = save.this_save_date
