extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var tank_position = position
	var mouse_position = get_viewport().get_mouse_position()
	var toward_mouse = (mouse_position - tank_position).normalized()

#	Version 1	
#	var cos_theta = Vector2.RIGHT.dot(toward_mouse)
#	if mouse_position.y > tank_position.y:
#		$"Cannon Container".rotation = acos(cos_theta)
#	else:
#		$"Cannon Container".rotation = -acos(cos_theta)

#	Version 2
#	$"Cannon Container".rotation = Vector2.RIGHT.angle_to(toward_mouse)

#	Version 3
	$"Cannon Container".rotation = mouse_position.angle_to_point(tank_position)	
