extends Node

var settings : Logic_Settings = Logic_Settings.new()

func _ready() -> void:
	settings.reload()
