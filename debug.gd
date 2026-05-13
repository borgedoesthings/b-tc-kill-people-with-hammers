extends Node

func _unhandled_key_input(event: InputEvent) -> void:
	var unhandledInput: InputEventKey = event
	if event.is_pressed():
		var key: int = unhandledInput.keycode
		
		match key:
			KEY_Q:
				get_tree().quit()
			KEY_R:
				get_tree().reload_current_scene()
