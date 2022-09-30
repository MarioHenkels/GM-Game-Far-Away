//Spawns Rocks
if(room == rm_game) {
	
	audio_play_sound(msc_battle1_full, 2, true);
	
	spawnRandomly(obj_rock, 5, "Rocks");
	
	alarm[0] = 3*room_speed;
}

