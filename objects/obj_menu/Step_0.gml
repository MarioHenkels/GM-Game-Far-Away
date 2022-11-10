
if(!global.pause) exit;

key_up = keyboard_check_pressed(global.key_up);
key_down = keyboard_check_pressed(global.key_down);
key_enter = keyboard_check_pressed(global.key_enter);

var menu_pages = global.menu_pages;
var menu_options = global.menu_options;
var page = global.page;

var currentPage = menu_options[page];

var ds_grid = menu_pages[page]
var ds_height = ds_grid_height(ds_grid);

////////////////////////////////////////Mudar a opção vista no menu
var oChanged = key_down - key_up;
if(oChanged != 0){
	
	currentPage += oChanged;
	
	if(currentPage > ds_height-1){ currentPage = 0; }
	if(currentPage < 0){ currentPage = ds_height-1; }
	
	global.menu_options[page] = currentPage
}

////////////////////////////////////////Selecionar uma opção no menu
if(key_enter){
	switch(ds_grid[# 1, currentPage]){
		
		case menu_element_type.page_transfer: //Page_Transfer
			global.page = ds_grid[# 2, currentPage];
			break;
	}
	audio_play_sound(sfx_shoot1, 2, false);
}