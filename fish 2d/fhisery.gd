extends CharacterBody2D
var Min = 100
var Max = 450
var speed = 200
var destination_pos = global_position


func _ready():
	print(destination_pos)
	
	
func update_facing():
	pass
	

	
	

	
func _process(delta):
	
	if position.distance_to(destination_pos) < 1:
		var randompos = randf_range(Min, Max)
		destination_pos = Vector2(randompos, 200)
	position = position.move_toward(destination_pos, delta*speed)
	
	


		


func _on_area_2d_body_entered(body):
	get_tree().change_scene_to_file("res://cauhopi.tscn")
