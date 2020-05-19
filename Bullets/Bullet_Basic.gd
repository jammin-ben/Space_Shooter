class_name Bullet

extends Sprite


var speed = -300
var enabled=true
#var col_layer = 0x1 setget set_col_layer
#var col_mask = 0x1 setget set_col_mask

#func _ready():#
#	$Hitbox.collision_layer=col_layer
#	$Hitbox.collision_mask =col_layer
#	print($Hitbox.collision_mask)
	
func _process(delta):
	self.position.y+=speed*delta
	if(self.position.y <= 0 or self.position.y > get_viewport().get_visible_rect().size.y):
		queue_free()

#func set_col_layer(value: int):
#	$Hitbox.collision_layer=value
	
#func set_col_mask(value: int):
#	$Hitbox.collision_mask =value