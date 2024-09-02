extends RigidBody2D

@onready var sprite = $texture
@onready var tophat = $Tophat

@onready var grandparent = get_parent().get_parent()
@onready var UI = null
@onready var morb_type = null
@onready var menu = null

func _ready():
	morbius.morb = self
	morbius.bap(2.5)
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
		morbius.sprite = sprite
		morbius.morb_type = morb_type
		morbius.type_selected()

func _on_texture_pressed() -> void:
	if UI and menu:
		menu.show()
