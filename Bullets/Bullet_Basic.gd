extends Sprite

var speed = -300
var col_layer = 0x1 setget set_col_layer

func _ready():
	$Hitbox.collision_layer=col_layer
	$Hitbox.collision_mask =col_layer
	print($Hitbox.collision_mask)
	
func _process(delta):
	self.position.y+=speed*delta
	if(self.position.y <= 0):
		queue_free()
		
func set_col_layer(value: int):
	$Hitbox.collision_layer=value
	$Hitbox.collision_mask =value