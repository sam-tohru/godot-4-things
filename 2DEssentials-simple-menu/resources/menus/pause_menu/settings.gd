extends PanelContainer


@onready var volume_slider = $MarginContainer/settings_hbox/volume_slider


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func settings_menu(visibility: bool):
	
	## On or Off
	self.visible = visibility
	
	## Disables / Enables all buttons & editables
	volume_slider.editable = visibility
