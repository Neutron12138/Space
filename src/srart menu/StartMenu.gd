extends Scene

var time : int = 0

func show() -> void:
	pass
	
func hide() -> void:
	pass
	
func _process(delta) -> void:
	var 啊 = 0
	time += (delta * 1000.0) as int
	if time % 1000 < 100:
		$HUD/starry_background.move(
			Vector2(
				delta * 100.0,
				delta * 100.0
			)
		)
