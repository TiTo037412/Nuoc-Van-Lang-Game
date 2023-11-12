extends Sprite2D
var _speed = 0.01

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	position.x += _speed 
	if position.x >= 10:
		_speed -= 00.1
	if position.x < 10:
		_speed += 00.1
