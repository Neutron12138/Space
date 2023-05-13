extends Node
class_name Scene

var m_need_escape : bool = false
var m_need_change : bool = false
var m_path : String

func check_escape():
	if Input.is_action_pressed("escape"):
		add_child(preload("res://sources/interface/Waiting.tscn").instantiate())
		m_need_escape = true

func change_scene():
	if m_need_change:
		get_tree().change_scene_to_file(m_path)
	if m_need_escape:
		m_need_change = true

