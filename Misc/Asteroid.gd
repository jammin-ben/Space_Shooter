extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite.frame=floor(randf()*3)
	self.rotate(randf()*2*PI)
	print("i am metero")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.y+=delta*20
	self.rotation+=1*delta