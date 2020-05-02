extends Node2D

var speed = 30

var health = 3
var particle 


func _ready():
	particle = load("res://Particle_Effects/Basic_Hit.tscn")

func _process(delta):
	self.position.y+=delta*speed

func _on_Area2D_area_entered(area):
	var particle_instance=particle.instance()
	
	get_tree().root.add_child(particle_instance)
	particle_instance.position=self.position+$Sprite.position
	particle_instance.emitting=true
	print(particle_instance.position)
	#kill the bullet 
	area.get_parent().queue_free()
	health -= 1 # Replace with function body.
	if health <=0:
		queue_free()