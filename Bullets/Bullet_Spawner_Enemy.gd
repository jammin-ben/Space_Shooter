extends Node2D

var firerate=1
var reloading=firerate

export var bullet_type = "res://Bullets/Bullet_Enemy_Basic.tscn"
export var active = true

var bullet
#var bullet_fx

func _ready():
	reloading=firerate
	bullet = load(bullet_type)
	#bullet_fx=load("res://Sound_Effects/Shoot_sf.tscn")
	
func _process(delta):
	main(delta)

#main function exists so we can override _process in inherited scenes
func main(delta):
	if(self.get_global_transform().origin.y > 0):
		if(active and reloading<=0):
			fire()
		reloading-=delta
	
func fire():
	get_parent().get_parent().get_node("sfx").play() 
	var bullet_instance = bullet.instance()
	get_tree().root.add_child(bullet_instance)
	bullet_instance.position=self.get_global_transform().origin# + get_parent().get_parent().position
	reloading = firerate
 