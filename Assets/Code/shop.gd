extends Control

@onready var nem = $Errors/nem

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if nem:
		storeman.nem = nem
		nem.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_close_pressed() -> void:
	hide()


func _on_button_pressed() -> void:
	storeman.buy_item(storeman.items.tophat)
