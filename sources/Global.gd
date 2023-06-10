extends Node

var settings = Classes.logics.Settings.new()
var logger = Classes.utilities.Logger.new()

func _ready() -> void:
	settings.reload()
