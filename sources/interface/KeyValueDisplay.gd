extends HBoxContainer

@export var key : String = ""
@export var value : String = ""

func _ready():
	$key.text = key
	$value.text = value
