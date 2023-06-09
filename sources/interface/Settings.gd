extends Node

const LANGUAGES = ["en","zh_CN"]

func _ready():
	$container/settings/language/options.selected = LANGUAGES.find(
		Global.settings.settings[
			Classes.logic.Settings.SETTINGS_LANGUAGE
		]
	)
	
	$container/settings/enable_mods/enable.button_pressed = Global.settings.settings[
		Classes.logic.Settings.SETTINGS_ENABLE_MODS
	]

func _process(delta):
	if Input.is_action_pressed("escape"):
		get_tree().change_scene_to_file("res://sources/interface/StartMenu.tscn")

func _on_options_item_selected(index):
	Global.settings.settings[
		Classes.logic.Settings.SETTINGS_LANGUAGE
	] = LANGUAGES[index]
	Global.settings.save_changes()

func _on_check_button_toggled(button_pressed):
	Global.settings.settings[
		Classes.logic.Settings.SETTINGS_ENABLE_MODS
	] = button_pressed
	Global.settings.save_changes()
