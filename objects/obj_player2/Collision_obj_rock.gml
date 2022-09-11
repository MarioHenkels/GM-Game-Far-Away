	
	instance_destroy();
	
	repeat (20) {
		instance_create_layer(x, y, "Rocks", obj_debris);
	}