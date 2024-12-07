extends Sprite2D

var key : Texture
var key2 : Texture
@onready var audio_player = $AudioStreamPlayer2D

func _ready() -> void:
	key = texture
	key2 = load("res://Assets/key2.png")
	
	pass


func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			texture = key2
			audio_player.play()
		else:
			texture = key
	pass
