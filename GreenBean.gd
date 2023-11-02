extends Sprite3D

@onready var GreenBean : Sprite3D = $Sprite3D
@onready var p0 = $p0.position
@onready var p1 = $p1.position
@onready var p2 = $p2.position

var time = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func bezier(t):
	var q0 = p0.lerp(p1, t)
	var q1 = p1.lerp(p2, t)
	var r = q0.lerp(q1, t)
	return r

func _process(delta):
	GreenBean.position = bezier(time)
	time += delta
	if time >= 1:
		time = 0
