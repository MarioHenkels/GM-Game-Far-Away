/// @description Spawn Rocks

if(room != rm_game){
	exit;
}

spawnRandomlyBorders(obj_rock, 1, "Rocks");

alarm[0] = 1*room_speed;
