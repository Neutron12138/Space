extends Node

const SCENE_NAMES = ["start_menu","playing_scene"]

func _ready():
	change_scene("start_menu")
	
func change_scene(name : String) -> void:
	if name not in SCENE_NAMES:
		print("Unknown scene:\"" + name + "\"")
		return
	
	match name:
		"start_menu":
			$start_menu.show()
			$playing_scene.hide()
		"playing_scene":
			$start_menu.hide()
			$playing_scene.show()
