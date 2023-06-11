extends CanvasLayer

@export_file("*.tscn") var options_scene_file

func _on_options_button_pressed():
	get_tree().paused = true
	var scene = load(options_scene_file).instantiate()
	add_child(scene)
