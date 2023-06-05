extends Resource
class_name SaveGame

## Save path
# const SAVE_GAME_PATH := "user://save/save.tres"
const SAVE_GAME_PATH := "user://save/save_" # id will be added on when saved, i.e /save_1.tres

## Things to save
@export var player_position := Vector3.ZERO
@export var this_save_date: String

# PackedScene i'm experimenting with
@export var main_packed_scene: PackedScene 

## Functions to writing to & load from file
func write_savegame(id: String) -> void:
	var save_path = str(SAVE_GAME_PATH + id + '.tres')
	ResourceSaver.save(self, save_path)

static func save_exists(id: String) -> bool:
	var save_path = str(SAVE_GAME_PATH + id + '.tres')
	return ResourceLoader.exists(save_path)

static func load_savegame(id: String) -> Resource:
	var save_path = str(SAVE_GAME_PATH + id + '.tres')
	return ResourceLoader.load(save_path, "", 2)
