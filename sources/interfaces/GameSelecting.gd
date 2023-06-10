extends Control

func _process(delta):
	if Input.is_action_pressed("escape"):
		Game.change_scene(
			Scenes.interfaces.StartMenu.instantiate()
		)
		print("gs")
