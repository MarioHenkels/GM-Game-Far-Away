/// @description Spawn Enemies

object = choose(obj_rock);

if(room != rm_game){
	exit;
}

spawnRandomlyBorders(object, 1, "Rocks");

alarm[0] = 1*room_speed;
