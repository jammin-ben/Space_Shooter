extends Sprite

export var dun = false setget set_dun
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func play_anim(anim_name):
	if(not dun):
		$AnimationPlayer.play(anim_name)
	
func set_dun(new_value):
	dun = new_value
	if new_value == true:
		self.frame=2
	if new_value == false:
		self.frame=0