extends Node3D

## You need some buttons to use the main save functions, i put this in a menu page, but anywhere your buttons to save are
## globs = Global / Autoload file [make sure to add the global signals into the global file]

## These are 4 buttons & 1 label node, change these to your button variables
# save buttons
var save_0 
var save_1
var save_2
var save_3

# Label that tells player if saving or loading
var load_save_label 

################################################################################
## Button pressed functions ##
# Alls save buttons emit a Global Signal of what to do
func _on_save_auto_pressed():
	if load_save_label.text == 'Save': # Saves
		globs.emit_signal('save_game_main', 'auto')
	else: # Loads
		globs.emit_signal('load_game_main', 'auto')

func _on_save_0_pressed():
	if load_save_label.text == 'Save': # Saves
		globs.emit_signal('save_game_main', '0')
	else: # Loads
		globs.emit_signal('load_game_main', '0')

func _on_save_1_pressed():
	if load_save_label.text == 'Save': # Saves
		globs.emit_signal('save_game_main', '1')
	else: # Lodas
		globs.emit_signal('load_game_main', '1')

func _on_save_2_pressed():
	if load_save_label.text == 'Save': globs.emit_signal('save_game_main', '2')
	else: globs.emit_signal('load_game_main', '2')

func _on_save_3_pressed():
	if load_save_label.text == 'Save': globs.emit_signal('save_game_main', '3')
	else: globs.emit_signal('load_game_main', '3')
