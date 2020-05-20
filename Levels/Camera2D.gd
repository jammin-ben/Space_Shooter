extends Camera2D
var shake_amount = 0
var damping = .1
func _ready() -> void:
	for shake_obj in get_tree().get_nodes_in_group("camera_shaker"):
		shake_obj.connect("camera_shake_requested",self,"_on_camera_shake_requested")


func _process(delta):
	self.set_offset(Vector2( \
		rand_range(-1.0, 1.0) * shake_amount, \
		rand_range(-1.0, 1.0) * shake_amount \
	))
	self.shake_amount=lerp(self.shake_amount,0,self.damping)
	
func _on_camera_shake_requested(amount=1,damping=.1):
	self.shake_amount = amount
	self.damping=damping