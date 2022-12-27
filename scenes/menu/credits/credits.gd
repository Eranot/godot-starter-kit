extends Control

@export_file("*.tscn") var back_scene_file

func _on_back_button_pressed():
	get_tree().change_scene_to_file(back_scene_file)
