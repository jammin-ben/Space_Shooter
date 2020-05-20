extends Sprite

var speed = 30
var reloading = 1
export var health = 3
export var firerate = .20
export var animation_name = "Sine"

var particle
var bullet

onready var flasher = $Flasher
signal camera_shake_requested(amount,damping)

func _ready():
	particle = load("res://Particle_Effects/Basic_Hit.tscn")
	bullet = load("res://Bullets/Bullet_Enemy_Basic.tscn")
	
	$AnimationPlayer.play(animation_name)
	for gun in $Guns.get_children():
		gun.firerate = self.firerate
func fire():
	var bullet_instance = bullet.instance()
	get_tree().root.add_child(bullet_instance)
	bullet_instance.position=self.position
	reloading = firerate
	
func _process(delta):
	self.position.y+=delta*speed
	$Hurtbox.position=self.offset
	$Hitbox.position=self.offset
	#if(reloading <=0):
#		fire()
	#reloading -= delta

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
		emit_signal("camera_shake_requested",3,.1)
		queue_free()