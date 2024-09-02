extends RigidBody2D

@onready var sprite = $texture
@onready var grandparent = get_parent().get_parent()
@onready var UI = null
@onready var morb_type = null

func _ready():
	morbius.morb = self
	morbius.bap(2.5)
	if not get_parent():
		print("First parent is null")
	elif not grandparent:
		print("Grandparent is null")
	else:
		UI = grandparent.get_node("UI")
		morb_type = UI.get_node("VBoxContainer/OptionButton")

func _process(_delta):
	if morb_type:
		if morb_type.selected == 0:
			sprite.texture_normal = load("res://Assets/Art/morbs/durable.png")
		elif morb_type.selected == 1:
			sprite.texture_normal = load("res://Assets/Art/morbs/bit-one.png")
		elif morb_type.selected == 2:
			sprite.texture_normal = load("res://Assets/Art/morbs/bit-hundred.png")
		elif morb_type.selected == 3:
			sprite.texture_normal = load("res://Assets/Art/morbs/bit-thousand.png")
		elif morb_type.selected == 4:
			sprite.texture_normal = load("res://Assets/Art/morbs/bit-five-thousand.png")
		elif morb_type.selected == 5:
			sprite.texture_normal = load("res://Assets/Art/morbs/bit-ten-thousand.png")
		elif morb_type.selected == 6:
			sprite.texture_normal = load("res://Assets/Art/morbs/gold.png")
		elif morb_type.selected == 7:
			sprite.texture_normal = load("res://Assets/Art/morbs/smoke.png")
		elif morb_type.selected == 8:
			sprite.texture_normal = load("res://Assets/Art/morbs/raid.png")
		elif morb_type.selected == 9:
			sprite.texture_normal = load("res://Assets/Art/morbs/fire.png")

func _on_texture_pressed() -> void:
	if UI:
		UI.show()
