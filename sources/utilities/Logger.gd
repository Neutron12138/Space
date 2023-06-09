extends Node

enum Level { UNKNOWN,DEBUG,INFO,WARNING,ERROR }
const LOG_FILE_PATH = "user://log.txt"
const LOG_TIME : String = "time"
const LOG_LEVEL : String = "level"
const LOG_CONTENT : String = "content"

const LOG_ITEM : Dictionary = {
	LOG_TIME : 0,
	LOG_LEVEL : Level.UNKNOWN,
	LOG_CONTENT : null
}

var _file : FileAccess = null
var _logs : Array[Dictionary] = []

func _ready() -> void:
	_file = FileAccess.open(LOG_FILE_PATH,FileAccess.WRITE)
	if _file == null:
		print(FileAccess.get_open_error())

func add_log(level : Level,content : String) -> void:
	var item = {
		LOG_TIME : Time.get_unix_time_from_system() as int,
		LOG_LEVEL : level,
		LOG_CONTENT : content
	}
	
	_logs.append(item)
	#_file.store_string(format_item(item))

func flush():
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

func format_item(item : Dictionary) -> String:
	return "[" + \
		Time.get_datetime_string_from_unix_time(item[LOG_TIME]) + \
		"]" + "[" + \
		get_level_string(item[LOG_LEVEL]) + \
		"]" + item[LOG_CONTENT]
	
func logu(content : String) -> void:
	self.add_log(Level.UNKNOWN,content)
	
func logd(content : String) -> void:
	self.add_log(Level.DEBUG,content)
	
func logi(content : String) -> void:
	self.add_log(Level.INFO,content)
	
func logw(content : String) -> void:
	self.add_log(Level.WARNING,content)
	
func loge(content : String) -> void:
	self.add_log(Level.ERROR,content)
	
