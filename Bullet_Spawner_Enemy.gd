extends Node2D

var firerate=1
var reloading=0

export var bullet_type = "res://Bullets/Bullet_Enemy_Basic.tscn"

var bullet


func _ready():
	bullet = load(bullet_type)

func _process(delta):
	if(reloading<=0):
		fire()
	reloading-=delta

func fire():
	print(self.global_transform.origin)
	var bullet_instance = bullet.instance()
	get_tree().root.add_child(bullet_instance)
	#bullet_instance.position=get_parent().get_parent().position+self.position
	bullet_instance.position=self.get_global_transform().origin# + get_parent().get_parent().position
	reloading = firerate