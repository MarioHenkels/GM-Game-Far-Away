if(room == rm_game) {
	
	audio_play_sound(msc_8bitjam, 2, true);
	
	repeat(7){
	
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
		);
	
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height)
		);

		instance_create_layer(xx, yy, "Rocks", obj_rock)
	}
	
	alarm[0] = 3*room_speed;
}

