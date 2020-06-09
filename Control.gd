extends Node

# Called when the node enters the scene tree for the first time.
func _process(delta):
	if Input.is_action_pressed("ui_reset"):
		get_tree().reload_current_scene()