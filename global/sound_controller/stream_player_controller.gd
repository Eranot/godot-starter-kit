extends AudioStreamPlayer

@export_dir var directory

var is_playing = false

func play_sound(sound_name):
	self.stream = load(directory + "/" + sound_name)
	self.play()
	is_playing = true

func set_volume(volume):
	if(volume == 0):
		self.volume_db = -80
		return
		
	self.volume_db = -50 + (0.5 * volume)

func get_volume():
	return (self.volume_db + 50) * 2 
