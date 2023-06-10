extends Control

func _process(delta : float) -> void:
	if Input.is_action_pressed("escape"):
		if self == Game._current_scene:
			get_tree().quit()

func _on_start_pressed() -> void:
	Game.change_scene(
		Scenes.interfaces.GameSelecting.instantiate()
	)

func _on_settings_pressed() -> void:
	hide()

func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_mods_pressed() -> void:
	hide()

func _on_test_pressed() -> void:
	hide()

func _on_more_pressed() -> void:
	hide()

func _on_about_pressed() -> void:
	hide()
