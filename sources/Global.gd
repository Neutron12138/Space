extends Node

var settings = Classes.logic.Settings.new()
var logger = Classes.utilities.Logger.new()

func _ready() -> void:
	settings.reload()
