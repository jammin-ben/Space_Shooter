extends Camera2D
var noise
var trauma = 0
var shake = 0
var time = 0
var trauma_damping = .03
var max_shake = 50
func _ready() -> void:
	for shake_obj in get_tree().get_nodes_in_group("camera_shaker"):
		shake_obj.connect("camera_shake_requested",self,"_on_camera_shake_requested")
	noise = OpenSimplexNoise.new()
	noise.period = .5
	noise.seed=randi()
	noise.octaves=4
	noise.persistence = .7

func _process(delta):
	time+=delta
	if(self.trauma>0):
		shake = trauma * trauma * max_shake
		self.set_offset(Vector2( \
			shake*noise.get_noise_2d(time,time),\
			shake*noise.get_noise_2d(time+1000,time+1000)
		))
	trauma=lerp(trauma,0,trauma_damping)
	
func _on_camera_shake_requested(amount=.1):
	trauma = clamp(trauma+amount,0,1)