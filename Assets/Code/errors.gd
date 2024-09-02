extends Control

@onready var nem = $nem
@onready var alo = $alo

func _on_okay_nem_pressed() -> void:
	nem.hide()
