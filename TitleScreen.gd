extends Control
export var scene_path = "res://Levels/World.tscn"
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_NewGame_button_up():
	get_tree().change_scene(scene_path)
