/// @description Spawn Enemies

if(room != rm_game || global.pause){
	alarm[0] = 2*room_speed;
	exit;
}
	
	object = choose(obj_rock, obj_bomb, obj_shuriken);

var spawnQtd = 1;
var spawnSpd = 2;
var enemyLimit = 20;
switch(global.difficulty){
	case 0:
		spawnQtd = 1;
		spawnSpd = 3;
		enemyLimit = 15;
		break;
	case 1:
		spawnQtd = 1;
		spawnSpd = 2;
		enemyLimit = 20;
		break;
	case 2:
		spawnQtd = 1;
		spawnSpd = 1;
		enemyLimit = 25;
		break;
	default:
		spawnQtd = 1;
		spawnSpd = 2;
		enemyLimit = 20;
		break;
}

show_debug_message("spawnQtd: " + string(spawnQtd));
show_debug_message("spawnSpd: " + string(spawnSpd));
show_debug_message("enemyLimit: " + string(enemyLimit));

if(global.enemyCount < enemyLimit){
	spawnRandomlyBorders(object, spawnQtd, "Enemies");
}

alarm[0] = spawnSpd*room_speed;
