ok_key = keyboard_check_pressed(vk_enter)
			|| keyboard_check_pressed(vk_space)
			|| mouse_check_button_pressed(mb_left);
			
exit_key = keyboard_check_pressed(vk_escape);

if(exit_key) {



}

if(ok_key) {

	switch(room){
		
		case rm_start:
	
			room_goto(rm_arena1);
	
			break;
			
		case rm_win:
		case rm_gameover:
		
			game_restart();
	
			break;
	}

}

if(room == rm_arena1){
	if(score >= 100000) {
		room_goto(rm_win);
	}

	if(lives <= 0) {
		room_goto(rm_gameover);
	}
}

