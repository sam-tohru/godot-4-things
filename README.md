# godot-4-things
necessary basic things I've made that can be used in godot 4, all are explained on my youtube tutorials
link to my Youtube tutorial playlist: https://www.youtube.com/playlist?list=PLFWbxnJE7BM2u59tb602-5_EWBNQoZnL8

This is mainly for my own purposes but anyone can use these if you want
I make some basic system (for example a save & load system) which can then be used in all of my future game-projects

Notes for each (I have made full tutorials for each & more already):
1. **save_load_system**
   This uses godot's 4 resources to save & load game progress & variables, this basic version is just set-up to save & load the player's position only as-well as the date of the save (which is used as the save_name), anything else you want to save needs to be added to 1_SaveGame.gd (in the variable section) and actually saved & load in 2_main.gd (just make the variables equal to what they are whether saving or loading)

2. **camera_screen_shake**
   Very basic yet effective screenshake method for the camera in godot, using signals, the player can emit anywhere in the code (for example when the player walks). So whenever the physics_process is enabled on the camera, it will shake until disabled, the shake is done through using a tween to change the camera offset every 0.1 second, basically 2 lines to shake (after all the signals have been set up)
    while process is enabled: 
   	var shake_vector = Vector2(randf_range(-1,1) * shake_intensity, randf_range(-1,1) * shake_intensity)
	  tween.tween_property(self, "offset", shake_vector, 0.1)
