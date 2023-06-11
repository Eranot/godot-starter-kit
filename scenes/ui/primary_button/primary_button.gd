extends Button

@export var hover_sound: AudioStream

@onready var audio_stream_player = $AudioStreamPlayer


func _on_mouse_entered():
	audio_stream_player.stream = hover_sound
	audio_stream_player.play()
#	SoundController.get_sfx_player().play_sound("hover-button.mp3")
	
