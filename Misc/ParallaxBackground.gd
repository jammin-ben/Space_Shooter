extends ParallaxBackground

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 60
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$ParallaxLayer2.motion_offset.y+=speed*delta