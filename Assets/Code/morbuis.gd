extends Node

var morb_type
var sprite
var morb

func bap(sec):
	await get_tree().create_timer(sec).timeout
	morb.apply_central_impulse(Vector2(randf_range(-300, 300), randf_range(-250, -400)))
	bap(sec)

func type_selected():
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
	elif morb_type.selected == 10:
		sprite.texture_normal = load("res://Assets/Art/morbs/paladin.png")
