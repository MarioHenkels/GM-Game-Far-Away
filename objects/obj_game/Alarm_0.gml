/// @description Spawn Enemies

object = choose(obj_rock, obj_bomb, obj_shuriken);

if(room != rm_game){
	exit;
}

spawnRandomlyBorders(object, 1, "Enemies");

alarm[0] = 2*room_speed;
