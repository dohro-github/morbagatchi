extends Node2D

@onready var move_window = $buttons/move_window
@onready var rigid_body = $morbs/morb

var is_held = false
var drag_start_position: Vector2i
var last_window_position: Vector2i

func _ready() -> void:
	# Connect the button signals
	if move_window:
		move_window.button_down.connect(_on_move_window_button_down)
		move_window.button_up.connect(_on_move_window_button_up)
	else:
		print("Warning: move_window button not found!")

	# Initialize the last window position
	last_window_position = DisplayServer.window_get_position()

func _process(_delta: float) -> void:
	if is_held:
		var current_mouse_pos = DisplayServer.mouse_get_position()
		var new_window_pos = current_mouse_pos - drag_start_position
		
		# Move the window
		DisplayServer.window_set_position(Vector2i(new_window_pos), 0)

		# Calculate the change in window position
		var window_movement = new_window_pos - last_window_position

		# Apply an impulse to the rigid body based on window movement
		rigid_body.apply_impulse(Vector2(window_movement * randf_range(1.5, 4)))

		# Update the last window position
		last_window_position = new_window_pos

func _on_move_window_button_up() -> void:
	is_held = false

func _on_move_window_button_down() -> void:
	is_held = true
	drag_start_position = DisplayServer.mouse_get_position() - DisplayServer.window_get_position()
	last_window_position = DisplayServer.window_get_position()


func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_minimise_pressed() -> void:
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MINIMIZED)
