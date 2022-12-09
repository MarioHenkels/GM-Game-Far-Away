
key_enter = keyboard_check_pressed(vk_enter)
			
key_back = keyboard_check_pressed(vk_escape);

global.enemyCount = array_length(layer_get_all_elements("Enemies"));

if(room == rm_game){
	if(key_back) {
		if(global.pause){
			global.pause = false;
		} else {
			instance_create_layer(global.view_width/3, global.view_height/2.5, "Systems", obj_title_anim);
			global.pause = true;
		}
	}
}

//show_debug_message("Rocks in Layer: " + string(array_length(layer_get_all_elements("Enemies"))));
//show_debug_message("Rocks in List: " + string(array_length(getAllInstancesByLayer("Enemies"))));

if(key_enter) {

	switch(room){

		case rm_win:
		case rm_gameover:
			restart_game();
			break;
	}

}

if(room == rm_game){
	
	//Player Atingiu o número-alvo do Contador
	if(global.currentCounterNum = global.targetCounterNum) {
		audio_play_sound(sfx_arp_up1, 1, false);
		score += 100 * global.difficulty;
		lives++;
		global.counterHitCount++;
		
		var newTargetNum;
		
		newTargetNum = round(irandom_range(global.currentCounterNum - 200, global.currentCounterNum + 200));
			
		if(!median(newTargetNum, global.currentCounterNum - 50, global.currentCounterNum + 50)){
				global.targetCounterNum = newTargetNum + 60;
		}
		
		musicIncreaseIntensity();
	}

	if(lives <= 0) {
		room_goto(rm_gameover);
	}
}

