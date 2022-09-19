	
lives -= 1;
	
if(lives <= 0) {
	
	audio_play_sound(sfx_explosion1, 1, false)
		
	room_goto(rm_gameover);
	
	repeat (20) {
			instance_create_layer(x, y, "Rocks", obj_debris);
	}
}