if (!invincible) {
	
	invincible = true;
	
	lives -= 1;
	
	alarm[0] = 3 * room_speed;
	
	audio_play_sound(sfx_explosion1, 1, false)
	
	if(lives <= 0) {
		repeat (20) {
			instance_create_layer(x, y, "Effects", obj_debris);
		}
	}
}