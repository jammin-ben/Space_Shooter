extends Node2D
const SPAWNRATE = 5
var spawntimer=0
enum {SMALL = 0,MEDIUM = 1,LARGE = 2}

var small
var medium 
var large

# Called when the node enters the scene tree for the first time.
func _ready():
	small = load("res://Enemies/Enemy_Basic.tscn")
	medium = load("res://Enemies/Enemy_Medium.tscn")
	large = load("res://Enemies/Enemy_Large.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	spawntimer-=delta
	if(spawntimer<=0):
		spawntimer=SPAWNRATE
		spawn()
		
func spawn():
	#make small more likely than med / large
	var idx = randf()
	idx = idx*idx*idx
	idx = floor(idx*3)
	
	var instance
	if(idx==SMALL):
		instance = small.instance()
	elif(idx==MEDIUM):
		instance = medium.instance()
	elif(idx==LARGE):
		instance = large.instance()
	
	#This doesnt work
	instance.add_to_group("camera_shaker")
	self.add_child(instance)
	
	