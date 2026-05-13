class_name Menu extends Container

signal button_focused(button)
signal button_pressed(button)

var index: int = 0

func get_buttons() -> Array:
	return get_children()

func connect_to_buttons() -> void:
	for button in get_buttons():
		button.focus_entered.connect(on_button_focused.bind(button))
		button.pressed.connect(on_button_pressed.bind(button))

func button_focus(n: int = index) -> void:
	var button: BaseButton = get_buttons()[n]
	button.grab_focus()

func on_button_focused(button: BaseButton) -> void:
	emit_signal("button_focused", button)

func on_button_pressed(button: BaseButton) -> void:
	emit_signal("button_pressed", button)
