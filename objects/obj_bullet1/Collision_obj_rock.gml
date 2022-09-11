
instance_destroy();

with(other){
	instance_destroy();
	
	if (sprite_index == spr_rock_large) {
		repeat(2) {
			var newRock = instance_create_layer(x, y, "Rocks", obj_rock);
			newRock.sprite_index = spr_rock_medium;
		}
	} else if (sprite_index == spr_rock_medium) {
		repeat(2) {
			var newRock = instance_create_layer(x, y, "Rocks", obj_rock);
			newRock.sprite_index = spr_rock_small;
		}
	}
	
	repeat (20) {
		instance_create_layer(x, y, "Rocks", obj_debris);
	}
}