extends RigidBody2D

@onready var sprite = $texture
@onready var tophat = $tophat

@onready var grandparent = get_parent().get_parent()
@onready var UI = null
@onready var morb_type = null
@onready var menu = null

func _ready():
	if tophat:
		tophat.hide()
	bap(2.5)
	if not get_parent():
		print("First parent is null")
	elif not grandparent:
		print("Grandparent is null")
	else:
		UI = grandparent.get_node("UI")
		menu = UI.get_node("menu")
		morb_type = UI.get_node("menu/VBoxContainer/OptionButton")

func _process(_delta):
	if storeman.items_owned.tophat == true:
		if tophat:
			tophat.show()
	
	if morb_type:
		type_selected()

func _on_texture_pressed() -> void:
	if UI and menu:
		menu.show()

func bap(sec):
	await get_tree().create_timer(sec).timeout
	apply_central_impulse(Vector2(randf_range(-300, 300), randf_range(-250, -400)))
	bap(sec)

func type_selected():
	if morb_type and tophat:
		if morb_type.selected == 0:
			sprite.texture_normal = load("res://Assets/Art/morbs/durable.png")
			tophat.texture = load("res://Assets/Art/accessories/Tophat/tophat_whitish_grey.png")
		elif morb_type.selected == 1:
			sprite.texture_normal = load("res://Assets/Art/morbs/bit-one.png")
			tophat.texture = load("res://Assets/Art/accessories/Tophat/tophat_grey.png")
		elif morb_type.selected == 2:
			sprite.texture_normal = load("res://Assets/Art/morbs/bit-hundred.png")
			tophat.texture = load("res://Assets/Art/accessories/Tophat/tophat_darker_purple.png")
		elif morb_type.selected == 3:
			sprite.texture_normal = load("res://Assets/Art/morbs/bit-thousand.png")
			tophat.texture = load("res://Assets/Art/accessories/Tophat/tophat_green.png")
		elif morb_type.selected == 4:
			sprite.texture_normal = load("res://Assets/Art/morbs/bit-five-thousand.png")
			tophat.texture = load("res://Assets/Art/accessories/Tophat/tophat_blue.png")
		elif morb_type.selected == 5:
			sprite.texture_normal = load("res://Assets/Art/morbs/bit-ten-thousand.png")
			tophat.texture = load("res://Assets/Art/accessories/Tophat/tophat_red.png")
		elif morb_type.selected == 6:
			sprite.texture_normal = load("res://Assets/Art/morbs/gold.png")
			tophat.texture = load("res://Assets/Art/accessories/Tophat/tophat_gold.png")
		elif morb_type.selected == 7:
			sprite.texture_normal = load("res://Assets/Art/morbs/smoke.png")
			tophat.texture = load("res://Assets/Art/accessories/Tophat/tophat_grey.png")
		elif morb_type.selected == 8:
			sprite.texture_normal = load("res://Assets/Art/morbs/raid.png")
			tophat.texture = load("res://Assets/Art/accessories/Tophat/tophat_white.png")
		elif morb_type.selected == 9:
			sprite.texture_normal = load("res://Assets/Art/morbs/fire.png")
			tophat.texture = load("res://Assets/Art/accessories/Tophat/tophat_other_red.png")
		elif morb_type.selected == 10:
			sprite.texture_normal = load("res://Assets/Art/morbs/paladin.png")
			tophat.texture = load("res://Assets/Art/accessories/Tophat/tophat_gold.png")
		elif morb_type.selected == 11:
			sprite.texture_normal = load("res://Assets/Art/morbs/corruption.png")
			tophat.texture = load("res://Assets/Art/accessories/Tophat/tophat_purple.png")
