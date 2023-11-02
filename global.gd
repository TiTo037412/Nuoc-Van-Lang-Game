extends Node

var selected_item = ""
var GB_Unselect = "GreenBeanUnselect"
var unselect = ""
var item_selected = false

var selected_equipment = ""
var Pan_Unselect = "PanUnselect"
var equipment_unselect = ""
var equipment_selected = false

var can_input_ingre = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if selected_item == "GreenBean":
		unselect = GB_Unselect
	if selected_equipment == "Pan":
		equipment_unselect = Pan_Unselect
	if item_selected:
		if equipment_selected:
			can_input_ingre = true
