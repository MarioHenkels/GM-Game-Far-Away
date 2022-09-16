if(room == rm_arena1) {
	
	repeat(10){
	
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
	
	alarm[0] = 1*room_speed;
}

