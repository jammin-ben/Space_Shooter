extends KinematicBody2D

const ACC = 4000
const MAX_SPEED = 300
const FRICTION = .2
const RELOAD_TIME = .24

var xspeed = 0
var yspeed = 0
var motion = Vector2.ZERO

onready var sky = $ParallaxBackground/ParallaxLayer
var bullet
var bullet_fx
var reloading=0.0

func fire():
	if(reloading<=0):
		var bullet_fx_instance = bullet_fx.instance()
		get_tree().root.add_child(bullet_fx_instance)
		bullet_fx_instance.position=self.position
		
		var bullet_instance = bullet.instance()
		get_tree().root.add_child(bullet_instance)
		bullet_instance.position=self.position
		#bullet_instance.set_col_layer(2)
		reloading = RELOAD_TIME

func _ready():
	bullet = load("res://Bullets/Bullet_Basic.tscn")
	bullet_fx = load("res://Sound_Effects/Shoot_sf.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	#sky movement
	reloading -= delta 
	sky.motion_offset.y+=100*delta
	
	#movement
	var input=Vector2.ZERO
	input.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	input=input.normalized()
	motion+=ACC*input*delta
	
	#clamp motion:
	motion=motion.clamped(MAX_SPEED)
	
	motion=move_and_slide(motion)
	
	if(input==Vector2.ZERO):
		motion=lerp(motion,Vector2.ZERO,FRICTION)
	
	#xspeed += ACC * x_input * delta 
	#yspeed += ACC * y_input * delta
	
	#xspeed = clamp(xspeed,-1*MAX_SPEED,MAX_SPEED)
	#yspeed = clamp(yspeed,-1*MAX_SPEED,MAX_SPEED)
	#if(x_input == 0):
#		xspeed *= FRICTION#
#	if(y_input == 0):#
#		yspeed *= FRICTION
	
	#self.position.x+= xspeed * delta
	#self.position.y+= yspeed * delta
	if Input.is_action_pressed("ui_accept"):
		fire()
	if Input.is_action_pressed("ui_reset"):
		get_tree().reload_current_scene()
		