extends "res://Bullets/Bullet_Spawner_Enemy.gd"

var queued=false

func _ready():
	firerate=.3

func main(delta):
	if(active and reloading<=0 and queued):
		fire()
		queued=false
	reloading-=delta