extends Control

var morb_scene = preload("res://scenes/morbs/morb.tscn")
@onready var morb_node = get_parent().get_node("morbs")

func _ready() -> void:
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_close_pressed() -> void:
	hide()
