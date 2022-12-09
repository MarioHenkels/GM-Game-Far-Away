//Spawns Rocks
var layerBg = layer_background_get_id("Background");
layer_background_sprite(layerBg, global.background);
if(room == rm_game) {
	
	spawnRandomly(obj_rock, 5, "Enemies");
	
	alarm[0] = 2*room_speed;
	
} else if (room == rm_start){
	instance_create_layer(global.view_width/3, global.view_height/2.5, "Systems", obj_title_anim);
} else if (room == rm_gameover){
	global.pause = false;
}
