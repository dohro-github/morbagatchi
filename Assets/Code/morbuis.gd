extends Node

var morb

func bap(sec):
	await get_tree().create_timer(sec).timeout
	morb.apply_central_impulse(Vector2(randf_range(-200, 200), randf_range(-250, -400)))
	bap(sec)
