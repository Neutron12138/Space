extends Node

var settings : Logic_Settings = Logic_Settings.new()
var logger : Utils_Logger = Utils_Logger.new()

func _ready() -> void:
	settings.reload()
	
	var weapon = Mod_Weapon.new()
	weapon.load_from_dictionary(
		JSON.parse_string(
			FileAccess.open(
				"res://assets/mods/basic/gun.json",
				FileAccess.READ
			).get_as_text()
		)
	)
	print(weapon.as_dictionary())
	
	logger.logd("good")
