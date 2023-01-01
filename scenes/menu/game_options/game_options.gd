extends Control

@export var show_buttons: bool = true

func _ready():
	%MusicVolumeSlider.value = SoundController.get_music_player().get_volume()
	%SFXVolumeSlider.value = SoundController.get_sfx_player().get_volume()
	
	if(not show_buttons):
		%ButtonsHBox.visible = false

func _on_close_button_pressed():
	get_tree().paused = false
	get_parent().remove_child(self)

func _on_music_volume_slider_value_changed(value):
	SoundController.get_music_player().set_volume(value)

func _on_sfx_volume_slider_value_changed(value):
	SoundController.get_sfx_player().set_volume(value)

func _on_back_to_menu_button_pressed():
	const title = "Are you sure?"
	const message = "Your progress will be lost"
	AlertModalGlobal.open_modal(self, title, message, Callable(self, "go_back_to_menu"))

func go_back_to_menu():
	get_tree().change_scene_to_file("res://scenes/menu/main_menu/main_menu.tscn")
