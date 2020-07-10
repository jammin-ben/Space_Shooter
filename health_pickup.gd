class_name Health_Kit

extends Node2D

func _process(delta):
	self.position.y+=25*delta

func _on_Area2D_area_entered(area):
	area.get_parent().get_node("heal_sfx").play()
	self.queue_free()
	#print(area.get_parent().name)
	if(area.get_parent().health < 5):
		area.get_parent().health+=1