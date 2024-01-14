extends Control

@export_file("*.tscn") var play_scene_file
@export_file("*.tscn") var options_scene_file
@export_file("*.tscn") var credits_scene_file


func _ready():
	if not MusicPlayer.playing:
		MusicPlayer.play()


func _on_play_button_pressed():
	get_tree().change_scene_to_file(play_scene_file)


func _on_options_button_pressed():
	var scene = load(options_scene_file).instantiate()
	scene.show_buttons = false
	add_child(scene)


func _on_credits_button_pressed():
	get_tree().change_scene_to_file(credits_scene_file)
