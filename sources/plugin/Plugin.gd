extends Node

var _object : Node = null
var _script : Script = null

func _init(path : String):
	if FileAccess.file_exists(path):
		_object = Node.new()
		_script = load(path)
		_object.set_script(_script)
	else:
		
