extends Area3D

var hover = false
var selected_item = ""
var clicked = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.selected_item = selected_item

func _input(event):
	if event is InputEventMouseButton:
		if hover:
			if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
				selected_item = get_parent().name
				clicked = true
				Global.item_selected = true
				
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
			selected_item = Global.unselect
			clicked = false
			Global.item_selected = false
			
func _on_mouse_entered():
	if not clicked:
		hover = true
		selected_item = get_parent().name
		Global.item_selected = false
		
func _on_mouse_exited():
	if not clicked:
		hover = false
		selected_item = Global.unselect
		Global.item_selected = false
