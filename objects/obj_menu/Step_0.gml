
if(!global.pause) exit;

key_up = keyboard_check_pressed(global.key_up);
key_down = keyboard_check_pressed(global.key_down);
key_left = keyboard_check_pressed(global.key_left);
key_right = keyboard_check_pressed(global.key_right);
key_select = keyboard_check_pressed(global.key_enter);

var menu_pages = global.menu_pages;
var menu_options = global.menu_options;
var page = global.page;

var currentPage = menu_options[page];

var ds_grid = menu_pages[page]
var ds_height = ds_grid_height(ds_grid);

////////////////////////////////////////Mudar a opção vista no menu

if(global.menuInputting){
	
	switch(ds_grid[# 1, currentPage]){
		
		case menu_element_type.shift:
			
			var hInput = key_right - key_left;
			
			if(hInput != 0){
				ds_grid[# 3, menu_options[page]] += hInput;
				ds_grid[# 3, menu_options[page]] = clamp(ds_grid[# 3, menu_options[page]], 
														0, 
														array_length(ds_grid[# 4, menu_options[page]]) - 1);
			}
			
			break;
	}
	
} else {
	var oChanged = key_down - key_up;
	if(oChanged != 0){
	
		currentPage += oChanged;
	
		if(currentPage > ds_height-1){ currentPage = 0; }
		if(currentPage < 0){ currentPage = ds_height-1; }
	
		global.menu_options[page] = currentPage
	}
}

////////////////////////////////////////Selecionar uma opção no menu
if(key_select){
	switch(ds_grid[# 1, currentPage]){
		
		case menu_element_type.script_runner:
			script_execute(ds_grid[# 2, menu_options[page]]);
			break;
		case menu_element_type.page_transfer: //Page_Transfer
			global.page = ds_grid[# 2, currentPage];
			break;
		case menu_element_type.shift:
		
			if(global.menuInputting) { 
				script_execute(ds_grid[# 2, menu_options[page]], ds_grid[# 3, menu_options[page]])
				}
			global.menuInputting = !global.menuInputting;
			
			break;
	}
	audio_play_sound(sfx_shoot1, 2, false);
}