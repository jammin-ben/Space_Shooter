extends Sprite

onready var player = get_node("../../Player")

onready var player_health = player.health
onready var player_max_health = player.MAX_HEALTH

var flash_timer = 1
const FLASH_FREQ = 2

var player_dead = false
# Called when the node enters the scene tree for the first time.
func _ready():
	player.connect("player_killed", self, "_on_player_killed")
	pass # Replace with function body.

func flash_all():
	$AnimationPlayer.play("flash_linear")
func flash(bit_num):
	var children=$bits.get_children()
	var bit = children[bit_num]
	bit.play_anim("flash")

func _on_player_killed():
	player_dead = true

func update_dun():
	var children = $bits.get_children()
	for i in range(player_health, player_max_health):
		children[i].set_dun(true)

func _process(delta):
	if not player_dead:
		player_health = player.health
		player_max_health = player.MAX_HEALTH
	else:
		player_health = 0
	update_dun()
	if flash_timer<=0:
		flash_all()
	flash_timer-=delta
