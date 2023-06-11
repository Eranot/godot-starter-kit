extends Control

@export var show_buttons: bool = true

@onready var music_volume_slider = %MusicVolumeSlider
@onready var sfx_volume_slider = %SFXVolumeSlider


func _ready():
	if(not show_buttons):
		%ButtonsHBox.visible = false
	
	update_display()


func update_display():
	sfx_volume_slider.value = get_bus_volume_percent("sfx")
	music_volume_slider.value = get_bus_volume_percent("music")


func get_bus_volume_percent(bus_name: String):
	var bus_index = AudioServer.get_bus_index(bus_name)
	var volume_db = AudioServer.get_bus_volume_db(bus_index)
	return db_to_linear(volume_db)


func set_bus_volume_percent(bus_name: String, percent: float):
	var bus_index = AudioServer.get_bus_index(bus_name)
	var volume_db = linear_to_db(percent)
	AudioServer.set_bus_volume_db(bus_index, volume_db)


func _on_close_button_pressed():
	get_tree().paused = false
	get_parent().remove_child(self)


func _on_music_volume_slider_value_changed(value):
	set_bus_volume_percent("music", value)


func _on_sfx_volume_slider_value_changed(value):
	set_bus_volume_percent("sfx", value)


func _on_back_to_menu_button_pressed():
	const title = "Are you sure?"
	const message = "Your progress will be lost"
	AlertModalGlobal.open_modal(self, title, message, go_back_to_menu)


func go_back_to_menu():
	get_tree().change_scene_to_file("res://scenes/menu/main_menu/main_menu.tscn")
