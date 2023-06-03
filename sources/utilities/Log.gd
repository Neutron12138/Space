class_name Utils_Log
extends Node

const LOG_FILE_PATH = "user://log.txt"
enum Level { UNKNOWN,DEBUG,INFO,WARNING,ERROR }

var _file : FileAccess = null

func _ready():
	_file = FileAccess.open(LOG_FILE_PATH,FileAccess.WRITE)

func log(level : Level,content : String) -> void:
	var str = "[" + \
	Time.get_datetime_string_from_system() + \
	"]" + "[" + \
	get_level_string(level) + \
	"]" + content
	_file.store_string(str)
	_file.flush()

func get_level_string(level : Level) -> String:
	match level:
		Level.DEBUG:
			return "DEBUG"
		Level.INFO:
			return "INFO"
		Level.WARNING:
			return "WARNING"
		Level.ERROR:
			return "ERROR"
	return "UNKNOWN"
	
func logu(content : String) -> void:
	self.log(Level.UNKNOWN,content)
	
func logd(content : String) -> void:
	self.log(Level.DEBUG,content)
	
func logi(content : String) -> void:
	self.log(Level.INFO,content)
	
func logw(content : String) -> void:
	self.log(Level.WARNING,content)
	
func loge(content : String) -> void:
	self.log(Level.ERROR,content)
