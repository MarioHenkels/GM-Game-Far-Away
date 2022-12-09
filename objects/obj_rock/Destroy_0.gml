if(!global.restarting){
	audio_play_sound(sfx_damage1, 3, false);

	repeat (20) {
		var newDebris = instance_create_layer(x, y, "Effects", obj_debris);
		newDebris.sprColor = sprColor;
	}
}
