
ok_key = keyboard_check_pressed(vk_enter)
			|| keyboard_check_pressed(vk_space)
			
exit_key = keyboard_check_pressed(vk_escape);

t_key = keyboard_check_pressed(ord("T"));

if(exit_key) {
}

if(t_key) {
	
	instance_create_layer(room_width/2, room_height/2, "PassiveMobs", obj_caterpillar);
	
}

show_debug_message("Rocks in Layer: " + string(array_length(layer_get_all_elements("Rocks"))));
show_debug_message("Rocks in List: " + string(array_length(getAllInstancesByLayer("Rocks"))));

if(ok_key) {

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

