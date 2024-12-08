extends Button



func _ready() -> void:
	func _on_Button_pressed():
		var audio_player = $AudioStreamPlayer2D
		if audio_player.playing:
			audio_player.stop()
		else:
			audio_player.play()


	





	
