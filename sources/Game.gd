extends Node

signal scene_changed

var _current_scene : Node = null

func _ready():
	var start_menu : Control = Scenes.interfaces.StartMenu.instantiate()
	add_child(start_menu)
	_current_scene = start_menu

func change_scene(new_scene : Node) -> void:
	if _current_scene != null:
		remove_child(_current_scene)
	add_child(new_scene)
