extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var mute = true
# Called when the node enters the scene tree for the first time.
func _ready():
	AudioServer.set_bus_mute(0,mute)
	 # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_reset"):
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("ui_mute"):
		mute=!mute
		AudioServer.set_bus_mute(0,mute)