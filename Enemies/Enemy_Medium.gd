extends "res://Enemies/Enemy_Basic.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
onready var animation = $AnimationPlayer
func _ready():
	health=10
	animation.play("Slow")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
