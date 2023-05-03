extends Node2D

@export var size : Vector2i
@export var count : int

var m_stars_pos = []

func _ready() -> void:
	for i in range(count):
		m_stars_pos.append(
			Vector2(
				randi_range(0,size.x),
				randi_range(0,size.y)
			)
		)

func _draw() -> void:
	draw_rect(
		Rect2(0,0,size.x,size.y),
		Color.PURPLE
	)
	
	for i in m_stars_pos:
		draw_circle(
			i,
			1,
			Color.YELLOW
		)
		
func move(direction : Vector2) -> void:
	for i in m_stars_pos:
		i += direction
		i = cut(i)
	queue_redraw()
	
func cut(vec : Vector2) -> Vector2:
	var x = ((vec.x / size.x) as int) * (size.x as float)
	var y = ((vec.y / size.y) as int) * (size.y as float)
	vec.x -= x
	vec.y -= y
	return vec
