extends Node

const LANGUAGES = ["en","zh_CN"]

func _process(delta):
	if Input.is_action_pressed("escape"):
		get_tree().change_scene_to_file("res://sources/interface/StartMenu.tscn")


func _on_options_item_selected(index):
	Global.settings.settings[Logic_Settings.SETTINGS_LANGUAGE] = LANGUAGES[index]
	Global.settings.save_changes()
