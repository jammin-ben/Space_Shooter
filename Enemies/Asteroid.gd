extends "res://Enemies/Enemy_Basic.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	#firerate = 10000
	#reloading = firerate
	$Sprite/Guns/Bullet_Spawner_Enemy.reloading=10000
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.rotation+=1*delta