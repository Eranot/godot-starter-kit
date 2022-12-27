@tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("MaxSizeContainer", "MarginContainer", preload("max_size_container.gd"), preload("icon.png"))

func _exit_tree():
	remove_custom_type("MaxSizeContainer")
