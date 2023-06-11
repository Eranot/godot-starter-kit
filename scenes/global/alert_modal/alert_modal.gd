extends Control

@export var title: String = ""
@export var message: String = ""
@export var ok_button_text: String = "Ok"
@export var cancel_button_text: String = "Cancel"

signal on_cancel
signal on_ok

func _ready():
	%Title.text = title
	%OkButton.text = ok_button_text
	%Message.text = message
	%CancelButton.text = cancel_button_text

func _on_close_button_pressed():
	get_tree().paused = false
	get_parent().remove_child(self)

func _on_cancel_button_pressed():
	get_tree().paused = false
	get_parent().remove_child(self)
	emit_signal("on_cancel")

func _on_ok_pressed():
	get_tree().paused = false
	get_parent().remove_child(self)
	emit_signal("on_ok")
