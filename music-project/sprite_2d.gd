extends Sprite2D


var key : Texture
var key2 : Texture



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	key = texture
	key2 = load("res://Assets/key2.png")
	
	pass # Replace with function body.

onready var audio_player =$AudioStreamPlayer2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		texture = key2
	elif event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
		texture = key
	pass
