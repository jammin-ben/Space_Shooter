extends Node2D
export var spawnrate = 5
var spawntimer=0

var small
var medium 
var large
var small_fleet 
var medium_fleet
var med3 
var omega
var map 

var idx = 0 

enum {SMALL = 0,MEDIUM = 1,LARGE = 2}
export(Array) var level =[1,2,1]


# Called when the node enters the scene tree for the first time.
func _ready():
	small = load("res://Enemies/Enemy_Basic.tscn")
	medium = load("res://Enemies/Enemy_Medium.tscn")
	large = load("res://Enemies/Enemy_Large.tscn")
	small_fleet = load("res://Enemy_Formations/Little_Fleet.tscn")
	medium_fleet = load("res://Enemy_Formations/Med_Fleet.tscn")
	med3 = load("res://Enemy_Formations/3med_fleet.tscn")
	omega=load("res://Enemy_Formations/omega_fleet.tscn")
	
	map = {1:small,2:medium,3:large,4:small_fleet,5:medium_fleet,6:med3,7:omega}
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	spawntimer-=delta
	if(spawntimer<=0):
		spawntimer=spawnrate
		spawn()
		
func spawn():
	if(idx<len(level)):
		if(level[idx]>0):
			var type = map[level[idx]]
			var instance=type.instance()
			self.add_child(instance)
		idx+=1
		