extends Node2D

var speed = 30
var health = 3
var reloading = 1
var firerate = 2

var particle 
var bullet

onready var flasher = $Flasher
signal camera_shake_requested

func _ready():
	particle = load("res://Particle_Effects/Basic_Hit.tscn")
	bullet = load("res://Bullets/Bullet_Enemy_Basic.tscn")
func fire():
	var bullet_instance = bullet.instance()
	get_tree().root.add_child(bullet_instance)
	bullet_instance.position=self.position
	reloading = firerate
	
func _process(delta):
	self.position.y+=delta*speed
	if(reloading <=0):
		fire()
	reloading -= delta

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
		emit_signal("camera_shake_requested")
		queue_free()