extends Node

func _ready():
	$HUD/container/scroll/content.text = Global.error_info.text
	for item in Global.error_info.buttons:
		var button = Button.new()
		button.text = item[Utils_ErrorInfo.TEXT_LABEL]
		button.connect("pressed",item[Utils_ErrorInfo.TEXT_ACTION])
		button.size_flags_horizontal = Control.SIZE_EXPAND_FILL
		$HUD/container/buttons.add_child(button)
