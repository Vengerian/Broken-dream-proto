if (instance_number(obj_music) >=2){
	instance_destroy()
} else {
	audio_play_sound(snd_music, 0, 1)
}
