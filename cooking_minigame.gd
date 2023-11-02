extends Node3D

var current_animation = ""

var GreenBean_tex1 = preload("res://download.jpg")
var GreenBean_tex2 = preload("res://dau xanh.jpg")

var Pan_tex1 = preload("res://icon.svg")
var Pan_tex2 = preload("res://download.jpg")

@onready var animationPlayer : AnimationPlayer = $AnimationPlayer
@onready var GreenBean = get_node("GreenBean")
@onready var GreenBeanPopUp = get_node("GreenBean/GreenBeanPopUp")
@onready var Pan = get_node("Pan")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_highlight()
	add_ingredient()

func _highlight():
	if Global.selected_item == "GreenBean":
		GreenBean.set_texture(GreenBean_tex2)
		current_animation = "GreenBeanPopUp"
	elif Global.selected_item == "GreenBeanUnselect":
		GreenBean.set_texture(GreenBean_tex1)
		current_animation = ""
		
	if Global.selected_equipment == "Pan":
		Pan.set_texture(Pan_tex2)
	elif Global.selected_equipment == "PanUnselect":
		Pan.set_texture(Pan_tex1)

func add_ingredient():
	if Global.item_selected:
		if Global.equipment_selected:
			GreenBeanPopUp.visible = true
			animationPlayer.play(current_animation)
