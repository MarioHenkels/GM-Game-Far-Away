
///@function		create_menu_page()
///@param			["name1", type1, entries1...]
///@param			["name2", type2, entries12...]
///@param			...

function create_menu_page(){
	var arg, i = 0;
	repeat(argument_count){
		arg[i] = argument[i];
		i++;
	}

	var ds_grid = ds_grid_create(5, argument_count);

	var yy = 0;
	repeat(argument_count){
		var array = arg[yy];
		var array_len = array_length(array);
	
		var xx = 0;
		repeat(array_len){
			ds_grid[# xx, yy] = array[xx];
			xx++;
		}
	
		yy++;
	}

	return ds_grid;
}
function start_game(){
	if(room != rm_game){
		room_goto(rm_game);
	}
	global.pause = false;
}

function restart_game(){
	if(room == rm_gameover){
		layer_destroy_instances("Enemies");
		
		score = 0;
		lives = 5;

		global.pause = true;
		global.returnMenu = menu_page.main;

		global.currentCounterNum = 0;
		global.targetCounterNum = 50;

		global.lgEnemyCounterVal = 10;
		global.mdEnemyCounterVal = 5;
		global.smEnemyCounterVal = 1;

		global.enemyCount = 0;

		global.allEnemies = [];

		global.menuInputting = false;

		//Dificuldade: 0- Fácil, 1- Médio, 2- Difícil.
		global.difficulty = 1;

		//CONTROLES
		global.key_enter	= vk_space;
		global.key_back		= vk_escape;
		global.key_up		= ord("W");
		global.key_down		= ord("S");
		global.key_left		= ord("A");
		global.key_right	= ord("D");
		global.key_shoot	= mb_left;
		global.key_skill	= mb_right;
		
		room_goto(rm_start);
		
		instance_create_layer(room_height/2, room_width/2, "Player", obj_player);
	}
}

function exit_game(){
	game_end();
}

function change_difficulty(){
	show_debug_message("DIFFICULTY: " + string(argument0));
	
	global.difficulty = int64(argument0);
	
	show_debug_message("global: " + string(global.difficulty));
}