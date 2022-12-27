extends Button

func _on_mouse_entered():
	SoundController.get_sfx_player().play_sound("hover-button.mp3")
