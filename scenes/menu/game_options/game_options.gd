extends Control

func _ready():
	%MusicVolumeSlider.value = SoundController.get_music_player().get_volume()
	%SFXVolumeSlider.value = SoundController.get_sfx_player().get_volume()

func _on_close_button_pressed():
	get_tree().paused = false
	get_parent().remove_child(self)

func _on_music_volume_slider_value_changed(value):
	SoundController.get_music_player().set_volume(value)

func _on_sfx_volume_slider_value_changed(value):
	SoundController.get_sfx_player().set_volume(value)
