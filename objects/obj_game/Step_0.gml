
key_enter = keyboard_check_pressed(vk_enter)
			
key_back = keyboard_check_pressed(vk_escape);

if(key_back) {
	global.pause = !global.pause;
}

show_debug_message("Rocks in Layer: " + string(array_length(layer_get_all_elements("Enemies"))));
show_debug_message("Rocks in List: " + string(array_length(getAllInstancesByLayer("Enemies"))));

if(key_enter) {

	switch(room){
		
		case rm_start:
	
			room_goto(rm_game);
	
			break;
			
		case rm_win:
		case rm_gameover:
		
			game_restart();
	
			break;
	}

}

if(room == rm_game){
	if(global.currentCounterNum >= global.targetCounterNum) {
		audio_play_sound(sfx_arp_up1, 1, false);
		room_goto(rm_win);
	}

	if(lives <= 0) {
		room_goto(rm_gameover);
	}
}

