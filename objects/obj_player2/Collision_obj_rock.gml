	
lives -= 1;
	
if(lives <= 0) {
		
	room_goto(rm_gameover);
	
	repeat (20) {
			instance_create_layer(x, y, "Rocks", obj_debris);
	}
}