class_name  Logic_Settings
extends Node

const SETTINGS_FILE_PATH : String = "user://settings.json"
const SETTINGS_LANGUAGE : String = "language"

var settings : Dictionary = {
	SETTINGS_LANGUAGE :TranslationServer.get_locale(),
}

func reload() -> void:
	
	if FileAccess.file_exists(
		SETTINGS_FILE_PATH):
		
		var file = FileAccess.open(
			SETTINGS_FILE_PATH,
			FileAccess.READ
		)
		var str = file.get_as_text()
		file.close()
		
		settings = JSON.parse_string(str)
		setup()
		
	else:
		
		save_changes()
		
func save_changes() -> void:
	var file = FileAccess.open(
			SETTINGS_FILE_PATH,
			FileAccess.WRITE
		)
	file.store_string(str(settings))
	file.close()
	
	setup()
	
func setup():
	TranslationServer.set_locale(
		settings[SETTINGS_LANGUAGE])
