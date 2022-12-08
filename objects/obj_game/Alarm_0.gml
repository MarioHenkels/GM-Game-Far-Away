/// @description Spawn Enemies

object = choose(obj_rock, obj_bomb, obj_shuriken);

if(room != rm_game){
	exit;
}

var spawnQtd;
var spawnSpd;
switch(global.difficulty){
	case 0:
		spawnQtd = 1;
		spawnSpd = 3;
		break;
	case 1:
		spawnQtd = 1;
		spawnSpd = 2;
		break;
	case 2:
		spawnQtd = 2;
		spawnSpd = 1;
		break;
	default:
		
		break;
}

spawnRandomlyBorders(object, 1, "Enemies");

alarm[0] = spawnSpd * room_speed;
