extends Area3D

var hover = false
var selected_equipment = ""
var clicked = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Global.selected_equipment = selected_equipment

func _input(event):
	if event is InputEventMouseButton:
		if hover:
			if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
				selected_equipment = get_parent().name
				clicked = true
				Global.equipment_selected = true
			
func _on_mouse_entered():
	if not clicked:
		hover = true
		selected_equipment = get_parent().name
		Global.equipment_selected = false
		
func _on_mouse_exited():
	if not clicked:
		hover = false
		selected_equipment = Global.equipment_unselect
		Global.equipment_selected = false


