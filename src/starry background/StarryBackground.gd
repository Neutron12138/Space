extends Node2D

@export var size : Vector2i = Vector2i(1200,640)
@export var count : int = 120
@export var star_color : Color = Color.LIGHT_YELLOW
@export var background_color : Color = Color.DARK_BLUE

var m_image : Image
var m_texture : ImageTexture

func _ready() -> void:
	m_image = create_bg()
	m_texture = ImageTexture.create_from_image(m_image)
	$background0.texture = m_texture
	$background1.texture = m_texture
	$background2.texture = m_texture
	$background3.texture = m_texture

func move(direction : Vector2) -> void:
	pass
	
func create_bg() -> Image:
	var data = PackedByteArray()
	
	var stars_xpos = []
	var stars_ypos = []
	
	for i in range(count):
		stars_xpos.append(randi_range(0,size.x))
		stars_ypos.append(randi_range(0,size.y))
	
	for y in range(size.y):
		for x in range(size.x):
			if x in stars_xpos and y in stars_ypos:
				data.append_array(
					color_to_bytes(star_color)
				)
			else:
				data.append_array(
					color_to_bytes(background_color)
				)
	
	return Image.create_from_data(
		size.x,
		size.y,
		false,
		Image.FORMAT_RGB8,
		data
	)
	
func color_to_bytes(color : Color) -> PackedByteArray:
	var result = PackedByteArray()
	result.append(color.r8)
	result.append(color.g8)
	result.append(color.b8)
	return result
