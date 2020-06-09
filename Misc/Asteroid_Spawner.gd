extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const asteroid = preload("res://Misc/Asteroid.tscn") 
# Called when the node enters the scene tree for the first time.
func _ready():
	#meteor = load("res://Misc/Asteroid.tscn")
	
	for i in range(10):
		var asteroid_instance=asteroid.instance()
		get_tree().root.call_deferred("add_child", asteroid_instance)
		asteroid_instance.position.x += randf()*200 - 100
		
		asteroid_instance.position.y += randf()*200 - 100
