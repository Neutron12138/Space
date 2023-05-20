extends Node

func _process(delta):
	if Input.is_action_pressed("escape"):
		get_tree().quit()

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://sources/interface/GameSelecting.tscn")

func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://sources/interface/Settings.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_mods_pressed():
	get_tree().change_scene_to_file("res://sources/interface/Mods.tscn")

func _on_test_pressed():
	get_tree().change_scene_to_file("res://sources/interface/TestSelecting.tscn")

func _on_more_pressed():
	get_tree().change_scene_to_file("res://sources/interface/More.tscn")

func _on_about_pressed():
	get_tree().change_scene_to_file("res://sources/interface/About.tscn")
