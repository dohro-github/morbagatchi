extends Control

var morb_scene = preload("res://scenes/morbs/morb.tscn")
@onready var morb_node = get_parent().get_node("morbs")
@onready var menu = $menu
@onready var shop = $shop

func _ready() -> void:
	menu.hide()
	shop.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_close_pressed() -> void:
	menu.hide()


func _on_shop_pressed() -> void:
	shop.show()
