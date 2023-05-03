extends Scene

func show():
	pass
	
func hide():
	pass
	
func _process(delta):
	$HUD/starry_background.move(
		Vector2(
			delta * 100.0,
			delta * 100.0
		)
	)
