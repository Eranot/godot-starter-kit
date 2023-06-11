extends Node

@export_file("*.tscn") var menu_scene_file

# Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(1).timeout
	get_tree().create_tween().tween_property(%RecursivoScreen, "modulate", Color.hex(0xffffffff), 1)
	await get_tree().create_timer(2).timeout
	get_tree().create_tween().tween_property(%RecursivoScreen, "modulate", Color.hex(0xffffff00), 1)
	await get_tree().create_timer(2).timeout
	get_tree().change_scene_to_file(menu_scene_file)
