extends KinematicBody2D

const ACC = 4000
const MAX_SPEED = 300
const FRICTION = .15
const RELOAD_TIME = .24
const IFRAMES = 1
const MAX_HEALTH=5

var motion = Vector2.ZERO
var reloading=0.0
var hit_timer = 0.0


signal frame_freeze_requested
signal camera_shake_requested(amount)
signal player_killed()

var health = 5

onready var animationplayer = $AnimationPlayer
#onready var DamagingAreas2D = preload("res://scripts/DamagingAreas2D.gd")

var bullet
var bullet_fx
var get_hit_fx

#func fire():
#	if(reloading<=0):
#		var bullet_fx_instance = bullet_fx.instance()
#		get_tree().root.add_child(bullet_fx_instance)
#		bullet_fx_instance.position=self.position
		
#		var bullet_instance = bullet.instance()
#		get_tree().root.add_child(bullet_instance)
#		bullet_instance.position=self.position
#		reloading = RELOAD_TIME

func _ready():
	#bullet = load("res://Bullets/Bullet_Basic.tscn")
	bullet_fx = load("res://Sound_Effects/Shoot_sf.tscn")
	get_hit_fx = load("res://Sound_Effects/Player_Hit_sf.tscn")

func _physics_process(delta):
	#sky movement
	#reloading -= delta 
	hit_timer -= delta
	
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
	
	if Input.is_action_pressed("ui_accept"):
		for gun in $Guns.get_children():
			gun.queued=true
			

func _kill():
	emit_signal("player_killed")
	queue_free()

func _on_Hurtbox_area_entered(area):
	if not area.get_parent() is Health_Kit:
		if(hit_timer <=0):
			#sound effect
			var get_hit_fx_instance = get_hit_fx.instance()
			get_tree().root.add_child(get_hit_fx_instance)
			get_hit_fx_instance.position=self.position
			
			animationplayer.play("flicker")
			self.health-=1
			if(area.get_parent() is Bullet):
				area.get_parent().queue_free()
			if self.health <= 0:
				_kill()
			hit_timer = IFRAMES
			emit_signal("camera_shake_requested", .7)
			emit_signal("frame_freeze_requested")
