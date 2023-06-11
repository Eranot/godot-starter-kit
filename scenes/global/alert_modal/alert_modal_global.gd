extends Node

var alert_modal_class = preload("./alert_modal.tscn")

# Called to easily open a modal
func open_modal(parent, title, message, on_ok: Callable = Callable(), on_cancel: Callable = Callable()):
	var alert_modal = alert_modal_class.instantiate()
	alert_modal.title = title
	alert_modal.message = message
	
	if(on_ok):
		alert_modal.connect("on_ok", on_ok)
		
	if(on_cancel):
		alert_modal.connect("on_cancel", on_cancel)
	
	parent.add_child(alert_modal)
