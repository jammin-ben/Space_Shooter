extends Node2D

const ACC = 4000
const MAX_SPEED = 400
const FRICTION = .8
const RELOAD_TIME = .2

var xspeed = 0
var yspeed = 0

onready var sky = $ParallaxBackground/ParallaxLayer
var bullet
var reloading=0.0

func fire():
	if(reloading<=0):
		var bullet_instance = bullet.instance()
		get_tree().root.add_child(bullet_instance)
		bullet_instance.position=self.position
		reloading = RELOAD_TIME

func _ready():
	bullet = load("res://Bullets/Bullet_Basic.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#sky movement
	reloading -= delta 
	
	sky.motion_offset.y+=100*delta
	
	#movement
	var x_input =  0
	var y_input = 0 
	if(Input.is_action_pressed("ui_right")):
		x_input += 1
	if(Input.is_action_pressed("ui_left")):
		x_input-=1
	if(Input.is_action_pressed("ui_down")):
		y_input += 1
	if(Input.is_action_pressed("ui_up")):
		y_input-=1
	
	xspeed += ACC * x_input * delta 
	yspeed += ACC * y_input * delta
	
	xspeed = clamp(xspeed,-1*MAX_SPEED,MAX_SPEED)
	yspeed = clamp(yspeed,-1*MAX_SPEED,MAX_SPEED)
	if(x_input == 0):
		xspeed *= FRICTION
	if(y_input == 0):
		yspeed *= FRICTION
	
	self.position.x+= xspeed * delta
	self.position.y+= yspeed * delta
	
	if Input.is_action_pressed("ui_accept"):
		fire()
	if Input.is_action_pressed("ui_reset"):
		get_tree().reload_current_scene()
		