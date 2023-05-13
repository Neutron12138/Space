extends Scene

func _process(delta):
	check_escape()
	if m_need_escape:
		get_tree().quit()
	else:
		change_scene()

func _on_start_pressed() -> void:
	m_path = "res://sources/interface/GameSelecting.tscn"
	m_need_change = true

func _on_settings_pressed() -> void:
	m_path = "res://sources/interface/Settings.tscn"
	m_need_change = true

func _on_exit_pressed() -> void:
	get_tree().quit()
