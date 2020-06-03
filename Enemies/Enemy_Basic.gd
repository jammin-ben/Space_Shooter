extends Sprite

var speed = 30
var reloading = 1
export var health = 3
export var firerate = 1
export var animation_name = "Sine"
export var explosion_texture = "res://Sprites/Explosion_small.png"
export var backward_anim = false
export var explosion_power = .45


var particle
var bullet
var explosion
onready var flasher = $Flasher
signal camera_shake_requested(amount)

func get_global_position():
	return self.global_transform.origin

func _ready():
	
	particle = load("res://Particle_Effects/Basic_Hit.tscn")
	bullet = load("res://Bullets/Bullet_Enemy_Basic.tscn")
	explosion = load("res://Particle_Effects/Explosion.tscn")
	
	if(backward_anim):
		$AnimationPlayer.play_backwards(animation_name)
	else:
		$AnimationPlayer.play(animation_name)
	
	for gun in $Guns.get_children():
		gun.firerate = self.firerate

func _process(delta):
	self.position.y+=delta*speed
	
func _on_Hurtbox_area_entered(area):
	flasher.play("flash")
	var particle_instance=particle.instance()
	get_tree().root.add_child(particle_instance)
	particle_instance.position=area.get_parent().position
	particle_instance.emitting=true
	
	#kill the bullet 
	area.get_parent().queue_free()
	health -= 1 # Replace with function body.
	if health <=0:
		var expl_instance = explosion.instance()
		get_tree().root.add_child(expl_instance)
		expl_instance.set_texture(load(explosion_texture))
		expl_instance.position=self.get_global_transform().origin
		emit_signal("camera_shake_requested",explosion_power)
		queue_free()