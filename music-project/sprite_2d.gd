extends Sprite2D


var key : Texture
var key2 : Texture

onready var audio_player =$AudioStreamPlayer2D
var sound : AudioStreamSample

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	key = texture
	key2 = load("res://Assets/key2.png")
	sound = load("res://Assets/1.wav") as AudioStreamSample
	audio_player.stream = sound
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		texture = key2
		audio_player.play()
	elif event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
		texture = key
	pass
