extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	RotateSky()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func RotateSky():
	$WorldEnvironment.environment.sky_rotation.y += 0.0005
