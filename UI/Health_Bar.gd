extends Sprite

onready var player = get_node("../../Player")

var flash_timer = 1
const FLASH_FREQ =2
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func flash_all():
	$AnimationPlayer.play("flash_linear")
func flash(bit_num):
	var children=$bits.get_children()
	var bit = children[bit_num]
	bit.play_anim("flash")

func update_dun():
	var children = $bits.get_children()
	for i in range(player.health,player.MAX_HEALTH):
		children[i].set_dun(true)

func _process(delta):
	update_dun()
	if flash_timer<=0:
		flash_all()
	flash_timer-=delta