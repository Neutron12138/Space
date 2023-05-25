extends Node

var settings : Logic_Settings = Logic_Settings.new()
var error_info : Utils_ErrorInfo = Utils_ErrorInfo.new()


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
	display_error()
	
func display_error() -> void:
	get_tree().change_scene_to_file(
		"res://sources/interface/Error.tscn")

func report_error(info : Utils_ErrorInfo) -> void:
	error_info = info
	display_error()
