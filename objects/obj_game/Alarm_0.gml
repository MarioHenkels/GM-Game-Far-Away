/// @description Spawn Enemies

object = choose(obj_rock, obj_bomb);

if(room != rm_game){
	exit;
}

spawnRandomlyBorders(object, 1, "Rocks");

alarm[0] = 2*room_speed;
