extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const SPEED=300

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	self.position.y-=SPEED*delta
	if(self.position.y <= 0):
		queue_free()