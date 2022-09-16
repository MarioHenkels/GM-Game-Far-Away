/// @description Spawn Rocks

if(room != rm_arena1){
	exit;
}

if(choose(true,false)){
	//sideS
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	//top/bottom
	var xx = irandom_range(0, room_width);	
	var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "Rocks", obj_rock);

alarm[0] = 1*room_speed;
