extends Sprite2D

var key : Texture
var key2 : Texture


func _ready() -> void:
	key = texture
	key2 = load("res://Assets/key2.png")
	
	pass


func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		texture = key2
	elif event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
		texture = key
	pass
