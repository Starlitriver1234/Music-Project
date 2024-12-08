extends Sprite2D

var key : Texture
var key2 : Texture
@onready var audio_player = $AudioStreamPlayer2D

func _ready() -> void:
	key = texture
	key2 = load("res://Assets/Piano Key 2.png")
	
	pass


func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if is_inside_tree() and is_visible() and get_rect().has_point(to_local(event.position)):
			if event.pressed:
				texture = key2
				audio_player.play()
			else:
				texture = key
	pass


func _on_button_pressed() -> void:
	pass # Replace with function body.
