
if(!global.pause) exit;

var menu_pages = global.menu_pages;
var menu_options = global.menu_options;
var page = global.page;

var gWidth = global.view_width, gHeight = global.view_height;

var ds_grid = menu_pages[page]
var ds_height = ds_grid_height(ds_grid);

var y_buffer = 32, x_buffer = 16;

var start_y = (gHeight/2) - ((((ds_height - 1) / 2) * y_buffer));
var start_x = gWidth / 2;



///////////////////////////////////////////////////////////////////////Draw background
var bgColor = c_black;

draw_rectangle_color(0,0,gWidth,gHeight,bgColor,bgColor,bgColor,bgColor,false);

///////////////////////////////////////////////////////////////////////Draw left side
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var ltx = start_x - x_buffer;
var lty;

var yy = 0;
repeat(ds_height){
	var slColor = c_white;
	var xOffset = 0;
	
	lty = start_y + (yy * y_buffer);
	
	if(yy == menu_options[page]) {
		slColor = c_aqua;
		xOffset -= (x_buffer/2);
	}
	
	draw_text_color(ltx + xOffset, lty, ds_grid[# 0, yy], slColor,slColor,slColor,slColor,1);
	
	
	yy++;
}

///////////////////////////////////////////////////////////////////////Draw dividing line

draw_line(start_x, start_y - y_buffer, start_x, lty + y_buffer);

////////////////////////////////////////////////////////////////////////Draw right side
