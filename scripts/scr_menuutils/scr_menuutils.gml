
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
function start_game(){}

function resume_game(){}

function exit_game(){}

function change_volume(){}

function change_difficulty(){}

function show_ranking(){} //????

function set_skill(){}

function set_shot_type(){}